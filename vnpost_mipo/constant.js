var swalIcon = {
    success: "success",
    info: "info",
    warning: "warning",
    error: "error",
    question: "question"
};

var regularEmailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;

var dateTimeFormat = [
    moment.ISO_8601,                                    //0
    "MM/DD/YYYY HH:mm:ss", //  10/31/2020 12:59:59      //1
    "MM/DD/YYYY", //  10/31/2020                        //2
    "DD/MM/YYYY HH:mm:ss", //  31/10/2020 12:59:59      //3
    "DD/MM/YYYY", //  31/10/2020                        //4
    "MM-DD-YYYY HH:mm:ss", //  10-31-2020 12:59:59      //5
    "MM-DD-YYYY", //  10-31-2020                        //6
    "DD-MM-YYYY HH:mm:ss", //  31-10-2020 12:59:59      //7
    "DD-MM-YYYY", //  31-10-2020                        //8
    "YYYY-MM-DD HH:mm:ss", //  2020-10-31 12:59:59      //9
    "YYYY-MM-DD", //  2020-10-31                        //10
    "YYYY-DD-MM HH:mm:ss", //  2020-31-10 12:59:59      //11
    "YYYY-DD-MM", //  2020-31-10                        //12
    "YYYY/MM/DD HH:mm:ss", //  2020/10/31 12:59:59      //13
    "YYYY/MM/DD", //  2020/10/31                        //14
    "YYYY/DD/MM HH:mm:ss", //  2020/31/10 12:59:59      //15
    "YYYY/DD/MM" //  2020/31/10                         //16
];

var vi_language = {
    days: ["Chủ nhật", "Thứ 2", "Thứ 3", "Thứ 4", "Thứ 5", "Thứ 6", "Thứ 7"],
    daysShort: ["CN", "T2", "T3", "T4", "T5", "T6", "T7"],
    daysMin: ["CN", "T2", "T3", "T4", "T5", "T6", "T7"],
    months: ["Tháng 1", "Tháng 2", "Tháng 3", "Tháng 4", "Tháng 5", "Tháng 6", "Tháng 7", "Tháng 8", "Tháng 9", "Tháng 10", "Tháng 11", "Tháng 12"],
    monthsShort: ["T1", "T2", "T3", "T4", "T5", "T6", "T7", "T8", "T9", "T10", "T11", "T12"],
    today: "Ngày hôm nay",
    clear: "Xóa",
    format: "mm/dd/yyyy",
    titleFormat: "MM yyyy", /* Leverages same syntax as 'format' */
    weekStart: 0
}

var RequestType = {
    Get: "GET",
    Post: "POST",
    Put: "PUT",
    Patch: "PATCH",
    Delete: "DELETE"
};

var Authorization = {
    AuthorizationKey: `Bearer ${localStorage.getItem("access_token")}`
};

var RequestContentType = {
    json: "application/json; charset=utf-8",
    application_x_www_form_urlencoded:
        "application/x-www-form-urlencoded; charset=UTF-8",
    multipart_form_data: "multipart/form-data; charset=UTF-8",
    text_plain: "text/plain; charset=UTF-8"
};

var AjaxConfigDefault = {
    headers: {
        "content-type": RequestContentType.json,
        authorization: Authorization.AuthorizationKey
    }
};

var ResponseDataType = {
    xml: "xml",
    html: "html",
    script: "script",
    json: "json",
    jsonp: "jsonp",
    text: "text",
    blob: "blob"
};

/**
 * Use this inside forEach to continue iteratoring  the next loop
 * true
 * */
var NEXT_LOOP = true;

/**
 * Use this inside forEach to finish iteratoring
 * false
 * */
var END_LOOP = false;

var RequestAjaxParams = {
    headers: {
        contentType: "Content-Type",
        authorization: "Authorization"
    },
    url: "",
    requestType: "",
    dataType: "",
    data: {},
    beforeSendCallbackFunction: null,
    successCallbackFunction: null,
    completeCallbackFunction: null,
    errorCallBackFunction: null
};

var version = {
    v1: "1.0",
    v2: "2.0",
    v3: "3.0"
};

//var originUrl = `https://api-salary.vnpost.vn`
var originUrl = `https://luong.vnpost.vn`
var urlPrefix = `https://luong.vnpost.vn/api/v${version.v1}`

var RequestApiUrl = {
    apiUrl: `${urlPrefix}/`,
    loginUrl: `${window.location.origin}/Auth/Login`,
    groupControllerUrl: `${urlPrefix}/Group/`,
    tenantControllerUrl: `${urlPrefix}/Tenant/`,
    userControllerUrl: `${urlPrefix}/User/`,
    functionControllerUrl: `${urlPrefix}/Function/`,
    permissionCodeControllerUrl: `${urlPrefix}/PermissionCode/`,
    groupFunctionControllerUrl: `${urlPrefix}/GroupFunction/`,
    salaryGroupControllerUrl: `${urlPrefix}/SalaryGroup/`,
    employeeControllerUrl: `${urlPrefix}/Employee/`,
    salaryGroupEmployeeUrl: `${urlPrefix}/SalaryGroupEmployee/`,
    accountControllerUrl: `${urlPrefix}/Account/`,
    userControllerUrl: `${urlPrefix}/User/`,
    titleControllerUrl: `${urlPrefix}/Title/`,
    jobTitleControllerUrl: `${urlPrefix}/JobTitle/`,
    jobPositionControllerUrl: `${urlPrefix}/JobPosition/`,
    objectCategoryControllerUrl: `${urlPrefix}/ObjectCategory/`,
    userGroupControllerUrl: `${urlPrefix}/UserGroup/`,
    timeKeepingCategoryControllerUrl: `${urlPrefix}/TimeKeepingCategory/`,
    timeKeepingTimeSheetControllerUrl: `${urlPrefix}/TimeKeepingTimesheet/`,
    humanResourceControllerUrl: `${urlPrefix}/HumanResource/`,
    parameterControllerUrl: `${urlPrefix}/Parameter/`,
    provisionalTaxControllerUrl: `${urlPrefix}/ProvisionalTax/`,
    advanceSalaryControllerUrl: `${urlPrefix}/AdvanceSalary/`,
    complexCoefficientControllerUrl: `${urlPrefix}/ComplexCoefficient/`,
    contractControllerUrl: `${urlPrefix}/Contract/`,
    seniorityCoefficientUrl: `${urlPrefix}/SeniorityCoefficient/`,
    specialCategoryControllerUrl: `${urlPrefix}/SpecialCategory/`,
    insureCategoryControllerUrl: `${urlPrefix}/InsureCategory/`,
    familyAllowancesControllerUrl: `${urlPrefix}/FamilyAllowances/`,
    parameterCategoryUrl: `${urlPrefix}/ParameterCategory/`,
    importCategory: `${urlPrefix}/ImportCategory/`,
    salaryImportUrl: `${urlPrefix}/SalaryImport/`,
    workingHistoryControllerUrl: `${urlPrefix}/WorkingHistory/`,
    socialInsuranceControllerUrl: `${urlPrefix}/SocialInsurance/`,
};

var actionsResource = {
    Add: "Add",
    Edit: "Edit",
    Delete: "Delete",
    Export: "Export",
    Import: "Import",
    Approve: "Approve",
    View: "View"
};

var urlUploadPrefix = `https://localhost:44349/api/v${version.v1}/Document-API`;
//var urlUploadPrefix = `https://document-salary.vnpost.vn/api/v${version.v1}`;
var RequestUpLoadApiUrl = {
    Upload: `${urlUploadPrefix}/FileUpload/Upload`,
    Delete: `${urlUploadPrefix}/FileUpload/DeleteFile`,
};

var StorageFolderName = {
    FolderA: "FolderA",
    Employee: "Employee",
    Tenant: "Tenant",
    ComplexCoefficient: "ComplexCoefficient",
    Contract: "Contract",
    SalaryImport: "SalaryImport"
};

var AllowedExtension = {
    CSV: "csv",
    XLSX: "xlsx",
    XLS: "xls",
    PDF: "pdf"
};

const floatingPoint = 3;
const document_API = "Document-API";