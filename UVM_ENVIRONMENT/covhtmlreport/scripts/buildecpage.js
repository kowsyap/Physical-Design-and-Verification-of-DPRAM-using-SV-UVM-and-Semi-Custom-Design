var g_cellClassRight = [ "odd_r", "even_r" ];
var g_cellClass = [ "odd", "even" ];
var g_c_divId = 0;
var g_ce_start_date;
var g_e_divId = 0;
var testHitDataScopeId;

function ec_createCell(row, type, classt, cspan, rspan, txt, preTxtVal, lnk,
		relAttribute, c_align, wid, tooltip) {
	var newCell = document.createElement(type);
	if (classt) {
		newCell.className = classt;
	}
	if (cspan > 1) {
		newCell.colSpan = cspan;
	}
	if (rspan > 1) {
		newCell.rowSpan = rspan;
	}
	if (c_align) {
		newCell.align = c_align;
	}
	if (wid) {
		newCell.width = wid;
	}
	if (lnk) {
		if (preTxtVal) {
			newCell.innerHTML = preTxtVal;
		}
		var newElement = document.createElement('a');
		newElement.setAttribute("href", lnk);
		if (relAttribute) {
			newElement.setAttribute("rel", relAttribute);
		}
		newElement.innerHTML = txt;
		newCell.appendChild(newElement);
	} else {
		newCell.innerHTML = txt;
	}
	if (tooltip) {
		newCell.setAttribute("title", tooltip);
	}
	row.appendChild(newCell);
	return;
};

function buildExprTables() {
	g_ce_start_date = new Date();
	document.title = g_oCONST.prod + ' Coverage Report';
	urlArgsObj = new UrlParserClass();
	var divId = urlArgsObj.getScopeId();
	var filenum = urlArgsObj.getFileNum();

	g_e_divId = "e" + divId;
	testHitDataScopeId = divId;
	var headID = document.getElementsByTagName("head")[0];
	var jsonScript = document.createElement('script');
	jsonScript.type = "text/javascript";
	jsonScript.src = "ce" + filenum + ".json";
	headID.appendChild(jsonScript);

}

function buildCondTables() {
	g_ce_start_date = new Date();
	document.title = g_oCONST.prod + ' Coverage Report';
	urlArgsObj = new UrlParserClass();
	var divId = urlArgsObj.getScopeId();
	var filenum = urlArgsObj.getFileNum();

	g_c_divId = "c" + divId;
	var headID = document.getElementsByTagName("head")[0];
	var jsonScript = document.createElement('script');
	jsonScript.type = "text/javascript";
	jsonScript.src = "ce" + filenum + ".json";
	headID.appendChild(jsonScript);

}

function processData(g_data, g_ce_divId) {
	var divObj = document.getElementById("content");

	if (g_ce_divId.slice(0,1) == 'e') {
		document.body.insertBefore(
			utils_getPageHeaderH1("Expression"),
			divObj);
		g_e_divId = 0;
	} else {
		document.body.insertBefore(
			utils_getPageHeaderH1("Condition"),
			divObj);
		g_c_divId = 0;
	}

	var buttonsTable = utils_getButtonsTable();
	document.body.insertBefore(
		buttonsTable,
		divObj);

	var show_excl_button = 0;
	var t = 0;

	var mainArr = g_data[g_ce_divId];
	var divOfTable = 0;
	var excluded_row = 0;
	var celltxt = 0;
	var preTxt = 0;
	var classtype = 0;
	var lnktxt = 0;
	var relAtt = 0;
	var hrefLnk = 0;
	var lastClassOdd = 0;
	var exFec = 0;
	var isDeepFec = 0;
	var tmp;
	var newRow;
	var mTmp;
	var multiBitWidth = 1;
	for (var int = 1; int < mainArr.length; int++) {
		divOfTable = document.createElement('div');
		if (mainArr[int].cr == "e") {
			divOfTable.className = 'excluded';
		} else {
			if (mainArr[int].cr == "c") {
				divOfTable.className = 'covered';
			} else {
				if (mainArr[int].cr == "m") {
					divOfTable.className = 'missing';
				}
			}
		}
		table = document.createElement('table');
		table.cellSpacing = "2";
		table.cellPadding = "2";
		table.id = mainArr[int].anchore;

		newRow = document.createElement('tr');
		var dataArr = mainArr[int].items;
		tmp = dataArr[0].x; // x for text
		switch (tmp) {
		case 'FC':
			celltxt = 'FEC Condition:&nbsp;';
			break;
		case 'FE':
			celltxt = 'FEC Expression:&nbsp;';
			break;
		case 'UC':
			celltxt = 'UDP Condition:&nbsp;';
			break;
		case 'UE':
			celltxt = 'UDP Expression:&nbsp;';
			break;
		default:
			celltxt = '[Oops...]:&nbsp;';
			break;
		}

		tmp = dataArr[0].lnk;
		if (tmp) {
			lnktxt = tmp;
			preTxt = celltxt;
			name = dataArr[0].z;
			if (name) {
				if (name.match(/^<.*>$/)) {
					celltxt = name.replace(">", "&gt;").replace("<", "&lt;");
				} else {
					celltxt = name;
				}
			}
		} else {
			preTxt = 0;
			celltxt = celltxt + dataArr[0].z;
		}

		var tmp2 = dataArr[0].u;
		if (tmp2)
			celltxt = celltxt + "<br> Canonical Expression:&nbsp; " + tmp2;

		ec_createCell(newRow, 'TH', 0, dataArr[0].s, 0, celltxt, preTxt,
				lnktxt, 0, 'left', 0, 0);

		tmp = dataArr[0].c;
		switch (tmp) {
		case 'R':
			classtype = 'bgRed';
			break;
		case 'Y':
			classtype = 'bgYellow';
			break;
		case 'G':
			classtype = 'bgGreen';
			break;
		case 'e':
			classtype = 'grey';
			excluded_row = 1;
			show_excl_button = 1;
			break;
		default:
			classtype = '';
			break;
		}
		if (!excluded_row) {
			celltxt = dataArr[0].p + "%";
		} else {
			celltxt = "Excluded";
			newRow.cells[0].className = 'grey';
		}
		ec_createCell(newRow, 'TD', classtype, 0, 0, celltxt, 0, 0, 0, 0, 200, 0);

		tmp = dataArr[0].d;
		isDeepFec = tmp;

		tmp = dataArr[0].F; // F is FEC
		exFec = tmp;
		mTmp = dataArr[0].m;
		multiBitWidth = mTmp;
		table.appendChild(newRow);
		if (tmp) {
			/** *********************************************************************** */
			newRow = document.createElement('tr');

			ec_createCell(newRow, 'TH', 'even', 0, 0, "Input Term", 0, 0, 0,
					0, 200, 0);
			ec_createCell(newRow, 'TH', 'even', 0, 0, "Covered", 0, 0, 0, 0,
					200, 0);//ankit changed tmp to 0//change back to tmp
			ec_createCell(newRow, 'TH', 'even', 0, 0, "Reason For No Coverage",
					0, 0, 0, 0, 200, 0);
			ec_createCell(newRow, 'TH', 'even', 0, 0, "Hint", 0, 0, 0, 0, 200, 0);
			table.appendChild(newRow);
			var r = 2;
			for (; r < dataArr.length; r++) {
				var excluded = 0;
				newRow = document.createElement('tr');
				tmp = dataArr[r]['z'];
				if (!tmp) {
					break;
				}
				ec_createCell(newRow, 'TD', 'even', 0, 0, tmp, 0, 0, 0,
						'center', 0, 0);

				tmp = dataArr[r]['c'];
				switch (tmp) {
				case 'g':
					classtype = 'green';
					celltxt = 'Yes';
					break;
				case 'r':
					classtype = 'red';
					celltxt = 'No';
					break;
				case 'e':
					classtype = 'grey';
					excluded = 1;
					show_excl_button = 1;
					celltxt = 'Excluded';
					newRow.cells[0].className = 'evenGrey';
					break;
				default:
					classtype = '';
					break;
				}
				ec_createCell(newRow, 'TD', classtype, 0,  0, celltxt, 0, 0,
						0, 'center', 0, 0);

				if (!excluded) {
					celltxt = dataArr[r]['r']; // r is reason
				}
				ec_createCell(newRow, 'TD', 'even', 0, 0, celltxt, 0, 0, 0,
						'center', 0, 0);

				if (!excluded) {
					celltxt = dataArr[r]['i']; // i is hint
				}
				ec_createCell(newRow, 'TD', 'even', 0, 0, celltxt, 0, 0, 0,
						'center', 0, 0);
				table.appendChild(newRow);
			}
			newRow = document.createElement('tr');
			if (exFec == 2) {
				var mIndex = 0;
				if(multiBitWidth > 1)
				{
					var mR = r + 1;
					var lIndex = 0;
					var MAX_INDEX_RANGE = 18;
					var printArr = new Array(MAX_INDEX_RANGE);
					var rangeArr = new Array(MAX_INDEX_RANGE);
					for(lIndex = 0; lIndex < MAX_INDEX_RANGE; lIndex++)
						rangeArr[lIndex] = -9999;
					var rowCh = 105;
					var searchCounter = 0;
					var indexCounter = 0;
					for(; mR < dataArr.length; mR += 2)
					{
						var lsb = dataArr[mR]['l'];
						var msb = dataArr[mR]['y'];
						for(searchCounter = 0; searchCounter < MAX_INDEX_RANGE; searchCounter++)
						{
							if(rangeArr[searchCounter] == lsb)
								break;
						}
						if(searchCounter == MAX_INDEX_RANGE)
						{
							if(indexCounter < MAX_INDEX_RANGE)
							{
								printArr[indexCounter] =  rowCh++;
								if(msb > lsb)
							 		rangeArr[indexCounter] = lsb;
								else
							 		rangeArr[indexCounter] = -1 * lsb;

								searchCounter = indexCounter;
							 	indexCounter++;
							}
							else
								searchCounter -= 1;
						}
					}
				}

				ec_createCell(newRow, 'TH', 'even', 0, 0, "Rows", 0, 0, 0, 0,
						200, 0);
				ec_createCell(newRow, 'TH', 'even', 0, 0, "FEC Target", 0, 0,
						0, 0, 200, 0);

				if(multiBitWidth == 0)
					multiBitWidth = 1;
				for(; mIndex < multiBitWidth; mIndex++)
				{
					var nIndex = 0;
					var str1 = "Hits (->0)";
					var str2 = "Hits (->1)";
					if(multiBitWidth > 1)
					{
						for(; nIndex < indexCounter; nIndex++)
						{
							var local = rangeArr[nIndex];
							var hitI = String.fromCharCode(printArr[nIndex]);
							if(local >= 0)
							{
								local = +local + +mIndex;
								str1 = str1.concat("<br>");
								hitI = hitI.concat(" = " );
								hitI = hitI.concat(""+local);
								hitI = hitI.fontsize(2);
								str1 = str1.concat(hitI.italics());

								str2 = str2.concat("<br>");
								str2 = str2.concat(hitI.italics());
							}
							else
							{
								local = -1 * local;
								local = +local - +mIndex;
								str1 = str1.concat("<br>");
								hitI = hitI.concat(" = " );
								hitI = hitI.concat(""+local);
								hitI = hitI.fontsize(2);
								str1 = str1.concat(hitI.italics());

								str2 = str2.concat("<br>");
							    str2 = str2.concat(hitI.italics());

/*
								str1 = str1.concat(String.fromCharCode(printArr[nIndex]));
								str1 = str1.concat(" = " );
								str1 = str1.concat(String(local));

								str2 = str2.concat("<br>");
								str2 = str2.concat(String.fromCharCode(printArr[nIndex]));
								str2 = str2.concat(" = " );
								str2 = str2.concat(String(local));*/
							}

						}

					}

					ec_createCell(newRow, 'TH', 'even', 0, 0, str1, 0, 0,
							0, 0, 200, 0);
					ec_createCell(newRow, 'TH', 'even', 0, 0, str2, 0, 0,
							0, 0, 200, 0);
				}
				/*ec_createCell(newRow, 'TH', 'even', 0, 0, str1, 0, 0,
						0, 0, 0, 0);
				ec_createCell(newRow, 'TH', 'even', 0, 0, "Hits (->1)", 0, 0,
						0, 0, 0, 0);*/
				if (isDeepFec == 1) {
					ec_createCell(newRow, 'TH', 'even', 0, 0,
							"Matching Input Patterns (->0)", 0, 0, 0, 0, 0, 0);
					ec_createCell(newRow, 'TH', 'even', 0, 0,
							"Matching Input Patterns (->1)", 0, 0, 0, 0, 0, 0);
				} else {
					ec_createCell(newRow, 'TH', 'even', 2, 0,
							"Non-Masking Condition(s)", 0, 0, 0, 0, 0, 0);
				}
				table.appendChild(newRow);
				/**
				 * ************************* end of table head
				 * **************************************
				 */
				r++;
				for (; r < dataArr.length; r++) {
					var excluded = 0;
					var tooltip1 = 0;
					var tooltip2 = 0;
					newRow = document.createElement('tr');

					ec_createCell(newRow, 'TD', 'even', 0, 0, "Row&nbsp;"
							+ dataArr[r]['n'], 0, 0, 0, "center", 0, 0);
					ec_createCell(newRow, 'TD', 'even', 0, 0, dataArr[r]['z'], 0, 0, 0, "center", 0, 0);


					for(mIndex = 0; mIndex < multiBitWidth; mIndex++)
					{
						var hitIndex = "h" + 2 * mIndex;
						if(multiBitWidth == 1)
							hitIndex = "h1";
					tmp = dataArr[r][hitIndex];
					classtype = 'even';
					if (tmp) {
						hrefLnk = dataArr[r]['k1'];
						celltxt = tmp;
						if (hrefLnk) {
							lnktxt = "pertest.htm?bin=" + dataArr[r]['t']
									+ hrefLnk + "&scope=" + testHitDataScopeId;
							relAtt = 'popup 200 200';
						} else {
							relAtt = lnktxt = 0;
							if (tmp.charAt(0) == 'E') {
								// excluded row
								var exComment = dataArr[r]['ec1'];
								excluded = 1;
								newRow.cells[0].className = 'evenGrey';
								newRow.cells[1].className = 'evenGrey';
								classtype = 'evenGrey';
								if (exComment) {
									tooltip1 = exComment;
									celltxt = celltxt + ' +';
								}
							}
						}
					} else {
						relAtt = lnktxt = 0;
						celltxt = "&nbsp;-&nbsp;";
					}
					ec_createCell(newRow, 'TD', classtype, 1, 0, celltxt, 0,
							lnktxt, relAtt, "center", 0, tooltip1);

					classtype = 'even';

					if(multiBitWidth == 1)
						hitIndex = "h2";
					else
						hitIndex = "h" + (2 * mIndex + 1);
					tmp = dataArr[r][hitIndex];
					if (tmp) {
						hrefLnk = dataArr[r]['k2'];
						celltxt = tmp;
						if (hrefLnk) {
							lnktxt = "pertest.htm?bin=" + dataArr[r]['t']
									+ hrefLnk + "&scope=" + testHitDataScopeId;
							relAtt = 'popup 200 200';
						} else {
							lnktxt = relAtt = 0;
							if (tmp.charAt(0) == 'E') {
								// excluded row
								var exComment = dataArr[r]['ec2'];
								excluded = 1;
								newRow.cells[0].className = 'evenGrey';
								newRow.cells[1].className = 'evenGrey';
								classtype = 'evenGrey';
								if (exComment) {
									tooltip2 = exComment;
									celltxt = celltxt + ' +';
								}
							}
						}
					} else {
						lnktxt = relAtt = 0;
						celltxt = "&nbsp;-&nbsp;";

					}
						ec_createCell(newRow, 'TD', classtype, 1, 0, celltxt, 0,
							lnktxt, relAtt, "center", 0, tooltip2);

					}
					ec_createCell(newRow, 'TD', classtype, (isDeepFec == 1) ? 0
							: 2, 0, "&nbsp;" + dataArr[r]['c1'] + "&nbsp;", 0,
							0, 0, "center", 0, 0);

					if (isDeepFec == 1) {
						ec_createCell(newRow, 'TD', classtype, 0, 0, "&nbsp;"
								+ dataArr[r]['c2'] + "&nbsp;", 0, 0, 0,
								"center", 0, 0);
					}
					table.appendChild(newRow);
				}
			} else {
				/* fec */
				ec_createCell(newRow, 'TH', 'even', 0, 0, "Rows", 0, 0, 0, 0,
						200, 0);
				ec_createCell(newRow, 'TH', 'even', 0, 0, "FEC Target", 0, 0,
						0, 0, 200, 0);

				var mIndex = 0;
				if(multiBitWidth > 1)
				{
					var mR = r + 1;
					var lIndex = 0;
					var MAX_INDEX_RANGE = 18;
					var printArr = new Array(MAX_INDEX_RANGE);
					var rangeArr = new Array(MAX_INDEX_RANGE);
					for(lIndex = 0; lIndex < MAX_INDEX_RANGE; lIndex++)
						rangeArr[lIndex] = -9999;
					var rowCh = 105;
					var searchCounter = 0;
					var indexCounter = 0;
					for(; mR < dataArr.length; mR += 2)
					{
						var lsb = dataArr[mR]['l'];
						var msb = dataArr[mR]['y'];
						for(searchCounter = 0; searchCounter < MAX_INDEX_RANGE; searchCounter++)
						{
							if(rangeArr[searchCounter] == lsb)
								break;
						}
						if(searchCounter == MAX_INDEX_RANGE)
						{
							if(indexCounter < MAX_INDEX_RANGE)
							{
							 printArr[indexCounter] =  rowCh++;
							 if(msb > lsb)
								 rangeArr[indexCounter] = lsb;
							 else
								 rangeArr[indexCounter] = -1 * lsb;
							 searchCounter = indexCounter;
							 indexCounter++;
							}
						}

					}

				}

				if(multiBitWidth == 0)
					multiBitWidth = 1;
				for(; mIndex < multiBitWidth; mIndex++)
				{
					var nIndex = 0;
					var str1 = "Hits";
					if(multiBitWidth > 1)
					{
						for(; nIndex < indexCounter; nIndex++)
						{
							var local = rangeArr[nIndex];
							var hit = String.fromCharCode(printArr[nIndex]);
							if(local >= 0)
							{
								local = +local + +mIndex;
								str1 = str1.concat("<br>");
								hit = hit.concat(" = " );
								hit = hit.concat(""+local);
								hit = hit.italics();
								str1 = str1.concat(hit.fontsize(2));
							}
							else
							{
								local = -1 * local;
								var local = +local - +mIndex;
								str1 = str1.concat("<br>");
								hit = hit.concat(" = " );
								hit = hit.concat(""+local);
								hit = hit.italics();
								str1 = str1.concat(hit.fontsize(2));

								/*str1 = str1.concat(String.fromCharCode(printArr[nIndex]));
								str1 = str1.concat(" = " );
								str1 = str1.concat(String(local));*/
							}

						}

					}


					ec_createCell(newRow, 'TH', 'even', 0, 0, str1, 0, 0, 0, 0,
						200, 0);
				}
				if (isDeepFec == 1)
					ec_createCell(newRow, 'TH', 'even', 0, 0,
							"Matching Input Patterns", 0, 0, 0, 0, 0, 0);
				else
					ec_createCell(newRow, 'TH', 'even', 0, 0,
							"Non-Masking Condition(s)", 0, 0, 0, 0, 0, 0);
				/**
				 * ************************* end of table head
				 * **************************************
				 */
				table.appendChild(newRow);
				r++;
				for (; r < dataArr.length; r++) {
					var excluded = 0;
					var hitCellToolTip = 0;
					newRow = document.createElement('tr');
					ec_createCell(newRow, 'TD', 'even', 0, 0, "Row&nbsp;"
							+ dataArr[r]['n'], 0, 0, 0, "center", 0, 0);
					ec_createCell(newRow, 'TD', 'even', 0, 0, dataArr[r]['z'], 0, 0, 0, "center", 0, 0);
					classtype = 'even';

					for(mIndex = 0; mIndex < multiBitWidth; mIndex++)
					{
					var hitIndex = "h" + mIndex;
					if(multiBitWidth == 1)
						hitIndex = "h1";
					tmp = dataArr[r][hitIndex];
					if (tmp) {
						celltxt = tmp;
						hrefLnk = dataArr[r]['k1']
						if (hrefLnk) {
							lnktxt = "pertest.htm?bin=" + dataArr[r]['t']
									+ hrefLnk + "&scope=" + testHitDataScopeId;
							relAtt = 'popup 200 200';
						} else {
							relAtt = lnktxt = 0;
							if (tmp.charAt(0) == 'E') {
								// excluded row
								var exComment = dataArr[r]['ec1'];
								newRow.cells[0].className = 'evenGrey';
								newRow.cells[1].className = 'evenGrey';
								classtype = 'evenGrey';
								if (exComment) {
									celltxt = celltxt + ' +';
									hitCellToolTip = exComment;
								}
							}
						}
					} else {
						relAtt = lnktxt = 0;
						celltxt = "&nbsp;-&nbsp;";
					}
					ec_createCell(newRow, 'TD', classtype, 0, 0, celltxt, 0,
							lnktxt, relAtt, "center", 0, hitCellToolTip);
					}
					ec_createCell(newRow, 'TD', classtype, 0, 0, "&nbsp;"
							+ dataArr[r]['c1'] + "&nbsp;", 0, 0, 0, "center",
							0, 0);
					table.appendChild(newRow);
				}
			}
		} else {
			var r = 1;
			lastClassOdd = true; // is true to start the series with
			// 'even'
			for (; r < (dataArr.length) - 1; r++) { // I added the '-1'
				// because the last
				// row is processed
				// outside the loop
				newRow = document.createElement('tr');
				tmp = dataArr[r]['r']; // r is rowspan
				if (!tmp) {
					break;
				}

				if (lastClassOdd)
					classtype = 'even';
				else
					classtype = 'odd';

				// commented this line to use the same class for both cells
				// lastClassOdd = !lastClassOdd;
				ec_createCell(newRow, 'TD', classtype, 0, tmp, "&nbsp;", 0, 0,
						0, 0, 0, 0);

				if (lastClassOdd)
					classtype = 'odd'; // the inverse in intended
				else
					classtype = 'even';

				lastClassOdd = !lastClassOdd;
				ec_createCell(newRow, 'TD', classtype,
						dataArr[r]['s'], 0, dataArr[r]['z'], 0, 0, 0,
						0, 0);
				table.appendChild(newRow);
			}
			newRow = document.createElement('tr');

			ec_createCell(newRow, 'TD', lastClassOdd ? 'even' : 'odd', 0, '1',
					"&nbsp;", 0, 0, 0, 0, 0, 0);
			ec_createCell(newRow, 'TH', lastClassOdd ? 'even' : 'odd', 0, 0,
					"Hits", 0, 0, 0, 0, 0, 0);
			ec_createCell(newRow, 'TH', lastClassOdd ? 'even' : 'odd', 0, 0,
					"Status", 0, 0, 0, 0, 0, 0);
			/**
			 * ************************* end of table head
			 * **************************************
			 */
			table.appendChild(newRow);
			r++;
			for (; r < dataArr.length; r++) {
				var excluded = 0;
				var alignTxt = 0;
				var cellTxt = 0;
				var tooltip = 0;

				lastClassOdd = true; // is true to start the series with
				// 'even'
				newRow = document.createElement('tr');
				// row class if existing
				tmp = dataArr[r]['cr'];
				switch (tmp) {
				case 'c':
					newRow.className = 'covered';
					break;
				case 'm':
					newRow.className = 'missing';
					break;
				case 'n':
					newRow.className = 'neutral';
					break;
				case 'e':
					newRow.className = 'grey';
					excluded = 1;
					show_excl_button = 1;
					break;
				default:
					newRow.className = '';
					break;
				}

				tmp = dataArr[r]['U']; // u is Unknown
				if (tmp) {
					ec_createCell(newRow, 'TD', 'odd',
							dataArr[r]['s'], 0, tmp, 0, 0, 0,
							'center', '20', 0);
				} else {
					lastClassOdd = !lastClassOdd;
					ec_createCell(newRow, 'TD', lastClassOdd ? 'even' : 'odd',
							0, 0, "Row&nbsp;" + dataArr[r]['n'], 0, 0, 0,
							'center', '20', 0);

					tmp = dataArr[r]['o']; // o is loop
					if (tmp) {
						tmp = dataArr[r]['z'];
						for (i = 0; i < tmp.length; i++) {
							lastClassOdd = !lastClassOdd;
							ec_createCell(newRow, 'TD', lastClassOdd ? 'even'
									: 'odd', 0, 0, tmp.charAt(i), 0, 0, 0,
									'center', '20', 0);
						}
					} else {
						lastClassOdd = !lastClassOdd;
						ec_createCell(newRow, 'TD', lastClassOdd ? 'even'
								: 'odd', 0, 0, dataArr[r]['z'], 0, 0, 0,
								'center', '20', 0);
					}
				}

				tmp = dataArr[r]['cc'];
				switch (tmp) {
				case 'o':
					classtype = 'odd_r';
					break;
				case 'e':
					classtype = 'even_r';
					break;
				default:
					classtype = '';
					break;
				}

				tmp = dataArr[r]['k1'];
				if (tmp) {
					lnktxt = "pertest.htm?bin=" + dataArr[r]['t'] + tmp
							+ "&scope=" + testHitDataScopeId;
					relAtt = 'popup 200 200';
				} else {
					relAtt = lnktxt = 0;
				}
				celltxt = dataArr[r]['h1'];
				if (celltxt) {
					if (celltxt.charAt(0) == 'E') {
						tooltip = dataArr[r]['ec1'];
						if (tooltip) {
							celltxt = celltxt + ' +';
						}
					}
				} else {
					celltxt = '--';
				}
				ec_createCell(newRow, 'TD', classtype, 0, 0, celltxt, 0,
						lnktxt, relAtt, 0, 0, tooltip);

				if (!excluded) {
					tmp = dataArr[r]['c'];
					switch (tmp) {
					case 'g':
						classtype = 'green';
						celltxt = 'Covered';
						break;
					case 'r':
						classtype = 'red';
						celltxt = 'ZERO';
						break;
					default:
						alignTxt = 'center';
						celltxt = '--';
						break;
					}
				} else {
					classtype = 'grey';
					celltxt = 'Excluded';
				}
				ec_createCell(newRow, 'TD', classtype, 0, 0, celltxt, 0, 0, 0,
						alignTxt, 0, 0);
				table.appendChild(newRow);
			}
		}
		divObj.appendChild(document.createElement('hr'));
		divOfTable.appendChild(table);
		divObj.appendChild(divOfTable);
	}
	if (show_excl_button == 1) {
		if (buttonsTable) {
			var newCell = document.createElement('TD');
			newCell.id = "showExcl";
			newCell.width = 106;
			newCell.setAttribute("onclick", "showExcl()");
			newCell.className = "button_off";
			newCell.title = "Display only excluded scopes and bins.";
			newCell.innerHTML = "Show Excluded";
			buttonsTable.rows[0].appendChild(newCell);
		}
	}
	var date = new Date();
    var diff = date - g_ce_start_date;
    if (urlArgsObj.getPerf()) {
    	console.save(g_ce_divId +", " + (diff/1000), "ce_console.txt");
    }
}

function processCondExprData(g_data){
	if (g_e_divId == 0) {
		processData(g_data, g_c_divId);
		return;
	}
	if (g_c_divId == 0) {
		processData(g_data, g_e_divId);
		return;
	}
	processData(g_data, g_e_divId);
}
