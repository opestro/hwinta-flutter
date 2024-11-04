var googleScriptJsCode = '''
/**
 * @license
 * Copyright (c) 2024 contact@feeef.net
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/**
 * Handles HTTP POST requests.
 * 
 * @param {Object} e - The event parameter containing request details.
 * @returns {ContentService.Output} - JSON response indicating success or failure.
 */
function doPost(e) {
  try {
    // Handle spreadsheet creation
    if (e.parameter.create) {
      return createSpreadsheet(e.parameter.create);
    }

    // Extract parameters from the query string
    var rowData = extractRowData(e.parameter.row);

    // Access the active spreadsheet
    var spreadsheet = getSpreadsheet(e);

    // Get or create the specified sheet
    var sheet = getOrCreateSheet(spreadsheet, e.parameter.name);

    // Append the new row to the sheet
    sheet.appendRow(rowData);

    // Return success response
    return createSuccessResponse("Row added successfully.");
  } catch (error) {
    // Return error response
    return createErrorResponse("Error: " + error.message);
  }
}

/**
 * Creates a new spreadsheet.
 * 
 * @param {string} name - The name of the spreadsheet to create.
 * @returns {ContentService.Output} - JSON response indicating success.
 */
function createSpreadsheet(name) {
  var spreadsheet = SpreadsheetApp.create(name);
  return ContentService
    .createTextOutput(JSON.stringify({ 
      status: "SUCCESS", 
      message: "created", 
      id: spreadsheet.getId(), 
      url: spreadsheet.getUrl() 
    }))
    .setMimeType(ContentService.MimeType.JSON);
}

/**
 * Extracts row data from a comma-separated string.
 * 
 * @param {string} rowString - The comma-separated string of row data.
 * @returns {Array<string>} - An array of row data.
 */
function extractRowData(rowString) {
  return rowString.split(',');
}

/**
 * Gets the spreadsheet by URL or ID from the request parameters.
 * 
 * @param {Object} e - The event parameter containing request details.
 * @returns {Spreadsheet} - The accessed spreadsheet.
 * @throws Will throw an error if neither URL nor ID is provided.
 */
function getSpreadsheet(e) {
  if (e.parameter.url) {
    return SpreadsheetApp.openByUrl(e.parameter.url);
  } else if (e.parameter.id) {
    return SpreadsheetApp.openById(e.parameter.id);
  } else {
    throw new Error("You must provide either a URL or an ID.");
  }
}

/**
 * Gets or creates the specified sheet in the spreadsheet.
 * 
 * @param {Spreadsheet} spreadsheet - The spreadsheet object.
 * @param {string} sheetName - The name of the sheet to get or create.
 * @returns {Sheet} - The accessed or created sheet.
 * @throws Will throw an error if sheet creation fails.
 */
function getOrCreateSheet(spreadsheet, sheetName) {
  var sheet = spreadsheet.getSheetByName(sheetName);
  if (!sheet) {
    sheet = spreadsheet.insertSheet(sheetName);
    if (!sheet) {
      throw new Error("Sheet creation failed: " + sheetName);
    }
  }
  return sheet;
}

/**
 * Creates a success response.
 * 
 * @param {string} message - The success message.
 * @returns {ContentService.Output} - JSON response indicating success.
 */
function createSuccessResponse(message) {
  return ContentService
    .createTextOutput(JSON.stringify({ status: "SUCCESS", message: message }))
    .setMimeType(ContentService.MimeType.JSON);
}

/**
 * Creates an error response.
 * 
 * @param {string} message - The error message.
 * @returns {ContentService.Output} - JSON response indicating error.
 */
function createErrorResponse(message) {
  return ContentService
    .createTextOutput(JSON.stringify({ status: "ERROR", message: message }))
    .setMimeType(ContentService.MimeType.JSON);
}
''';