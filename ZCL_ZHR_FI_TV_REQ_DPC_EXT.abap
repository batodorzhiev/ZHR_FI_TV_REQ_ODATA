class ZCL_ZHR_FI_TV_REQ_DPC_EXT definition
  public
  inheriting from ZCL_ZHR_FI_TV_REQ_DPC
  create public .

public section.

  class-methods GET_APPR_ROUTE_ALL
    importing
      !IM_AUTHOR type UNAME
      !IM_TYPE type ZHRE_BTRIP_SDESCR_CODE optional
      !IV_PAST_TRIP type FLAG optional
      !IV_PERNR type PERSNO optional
      !IV_STATUS type ZHRE_UI_TRIP_STATUS_1 optional
    changing
      !CH_TAB type ZHR_UI_TRIP_APPROVER_T_ALL .
  class-methods GET_APPR_ROUTE
    importing
      !IM_AUTHOR type UNAME
      !IM_TYPE type ZHRE_BTRIP_SDESCR_CODE optional
      !IV_PAST_TRIP type FLAG optional
      !IV_PERNR type PERSNO optional
      !IV_STATUS type ZHRE_UI_TRIP_STATUS_1 optional
    changing
      !CH_TAB type ZHR_UI_TRIP_APPROVER_T .
  class-methods CHECK_TOP_MAN
    importing
      !IM_UNAME type UNAME
      !IM_PERNR type PERSNO optional
    returning
      value(FLAG_TOP) type FLAG .
  class-methods GET_APPR_LIST
    importing
      !IV_PERNR type PERSNO
      !IV_TYPE type ZHRE_BTRIP_SDESCR_CODE optional
      !IV_REINR type REINR
    changing
      !CT_LIST type ZHR_UI_TRIP_APPR_LIST_T .
  class-methods GET_HISTORY
    importing
      !IV_PERNR type PERSNO
      !IV_REINR type REINR
      !IV_APP_ID type ZHRE_APPID
    changing
      !CT_TRIP type ZHR_UI_TRIP_T .
  class-methods READ_TEXT
    exporting
      !IV_TEXT_ID type THEAD-TDNAME
    changing
      !CV_TEXT type STRING .
  class-methods GET_LEADER
    importing
      !IV_OBJID type OBJID
      !IV_DATE type SY-DATUM
    exporting
      !ES_LEAD type ZHR_OBJBIF_OBJEC_LEADER_S .

  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_DEEP_ENTITY
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_STREAM
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~EXECUTE_ACTION
    redefinition .
  methods /IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_STREAM
    redefinition .
protected section.

  methods AUTOCLASSSET_GET_ENTITYSET
    redefinition .
  methods AVAREGIONSET_GET_ENTITYSET
    redefinition .
  methods AVAUSERFILTERSET_GET_ENTITYSET
    redefinition .
  methods AVIACLASSSET_GET_ENTITYSET
    redefinition .
  methods CARDSET_GET_ENTITYSET
    redefinition .
  methods CHECKBOXFILTERSE_GET_ENTITYSET
    redefinition .
  methods CITYFILTERSET_GET_ENTITYSET
    redefinition .
  methods CITYSET_GET_ENTITYSET
    redefinition .
  methods CLASSGKSET_GET_ENTITYSET
    redefinition .
  methods COUNTRYSET_GET_ENTITYSET
    redefinition .
  methods DELEGSET_GET_ENTITYSET
    redefinition .
  methods EMPLOYEESSET_GET_ENTITYSET
    redefinition .
  methods ESTIMATESET_GET_ENTITYSET
    redefinition .
  methods EXPENSESSET_GET_ENTITYSET
    redefinition .
  methods EXPTYPESET_GET_ENTITYSET
    redefinition .
  methods FILESET_DELETE_ENTITY
    redefinition .
  methods FILESET_GET_ENTITY
    redefinition .
  methods FILESET_GET_ENTITYSET
    redefinition .
  methods FORMSSET_GET_ENTITYSET
    redefinition .
  methods HASKIDSSET_GET_ENTITYSET
    redefinition .
  methods HOTELCLASSSET_GET_ENTITYSET
    redefinition .
  methods INTORDERSET_GET_ENTITYSET
    redefinition .
  methods LOADORDER_GET_ENTITY
    redefinition .
  methods LOADORDER_GET_ENTITYSET
    redefinition .
  methods MVZSET_GET_ENTITYSET
    redefinition .
  methods NUUCHSET_GET_ENTITYSET
    redefinition .
  methods ORGSET_GET_ENTITYSET
    redefinition .
  methods PASSTYPESET_GET_ENTITYSET
    redefinition .
  methods PERNRFILTERSET_GET_ENTITYSET
    redefinition .
  methods PREPAYSET_GET_ENTITYSET
    redefinition .
  methods RAILCLASSSET_GET_ENTITYSET
    redefinition .
  methods REGIONSET_GET_ENTITYSET
    redefinition .
  methods REQUESTLISTSET_GET_ENTITYSET
    redefinition .
  methods REQUESTSET_GET_ENTITY
    redefinition .
  methods REQUESTTYPESET_GET_ENTITYSET
    redefinition .
  methods STATUSFILTERSET_GET_ENTITYSET
    redefinition .
  methods STATUSSET_GET_ENTITYSET
    redefinition .
  methods STOPOVER2SET_GET_ENTITYSET
    redefinition .
  methods STOPOVERSET_GET_ENTITYSET
    redefinition .
  methods TAXNDSSET_GET_ENTITYSET
    redefinition .
  methods TIMELINESET_GET_ENTITYSET
    redefinition .
  methods TIMELINETYPESET_GET_ENTITYSET
    redefinition .
  methods TRANSFERSET_GET_ENTITYSET
    redefinition .
  methods TRANSFROMSET_GET_ENTITYSET
    redefinition .
  methods TRANSHOTELSET_GET_ENTITYSET
    redefinition .
  methods TRANSTOSET_GET_ENTITYSET
    redefinition .
  methods TRANSTYPESET_GET_ENTITYSET
    redefinition .
  methods TRIPGOALSSET_GET_ENTITYSET
    redefinition .
  methods TRIPSET_GET_ENTITYSET
    redefinition .
  methods USERSET_GET_ENTITY
    redefinition .
  methods WAERSSET_GET_ENTITYSET
    redefinition .
  methods REQUESTLISTSET_GET_ENTITY
    redefinition .
private section.

  constants C_WEGID_UP type WEGID value 'ORGA-UP' ##NO_TEXT.
  constants C_OTYPE_O type OTYPE value 'O' ##NO_TEXT.
  constants C_SES type SUBTY value '9009' ##NO_TEXT.
  constants C_OTYPE_P type OTYPE value 'P' ##NO_TEXT.
  constants C_PLVAR type PLVAR value '01' ##NO_TEXT.
  constants C_ROLE_RES type AGR_NAME value 'ZH_FIORI_TRAVEL%' ##NO_TEXT.
  constants C_ROLE_TAX type AGR_NAME value 'ZH_FIORI_TAX%' ##NO_TEXT.
  constants C_ROLE_ACC type AGR_NAME value 'ZH_FIORI_PY_RPL%' ##NO_TEXT.
  constants C_ROLE_EIO type AGR_NAME value 'ZH_FIORI_EIO%' ##NO_TEXT.
  constants C_ROLE_MAN type AGR_NAME value 'ZH_FIORI_MANAGER' ##NO_TEXT.
  constants C_ROLE_EMP type AGR_NAME value 'ZH_FIORI_EMPLOYEE' ##NO_TEXT.
  constants C_ROLE_TRIP type AGR_NAME value 'ZH_KS_HR_TRI%' ##NO_TEXT.
  constants C_TEST_ROLE_RES type AGR_NAME value 'ZTEST_FIORI_TRAVEL%' ##NO_TEXT.
  constants C_TEST_ROLE_TAX type AGR_NAME value 'ZTEST_FIORI_TAX%' ##NO_TEXT.
  constants C_TEST_ROLE_ACC type AGR_NAME value 'ZTEST_FIORI_PY_RPL%' ##NO_TEXT.
  constants C_TEST_ROLE_EIO type AGR_NAME value 'ZTEST_FIORI_EIO%' ##NO_TEXT.
  constants C_TEST_ROLE_MAN type AGR_NAME value 'ZTEST_FIORI_MANAGER%' ##NO_TEXT.
  constants C_TEST_ROLE_EMP type AGR_NAME value 'ZTEST_FIORI_EMPLOYEE%' ##NO_TEXT.
  constants C_TEST_ROLE_TRIP type AGR_NAME value 'ZTEST_KS_HR_TRI%' ##NO_TEXT.
  constants C_ROLE_SUPPORT type AGR_NAME value 'ZH%SUPPORT%' ##NO_TEXT.
  constants C_ROLE_CONS type AGR_NAME value 'ZH%KIS%FUNC%' ##NO_TEXT.
  constants C_ROLE_EDU type AGR_NAME value 'ZH_KS_HR_DSP_%' ##NO_TEXT.
  constants C_TEST_ROLE_EDU type AGR_NAME value 'ZTEST_KS_HR_DSP_%' ##NO_TEXT.

  methods CHANGE_RESERVE_STATUS
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods CHECK_PREGNANCY
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods CHECK_SES
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods CHECK_WEEKEND
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods GET_VISA_DEPT
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods PERFORM_CHECKS
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods TAKE
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods SAVE_PREPAY
    changing
      !CS_ENTITY type ZCL_ZHR_FI_TV_REQ_MPC=>TS_REQUEST
    returning
      value(RV_MESSAGE) type STRING .
  methods FILL_SHLP_SELOPT
    importing
      !IT_FILTER_SELOPT type /IWBEP/T_MGW_SELECT_OPTION
      !IV_PROPERTY type STRING
      !IV_SHLPNAME type SHLPNAME
      !IV_SHLPFIELD type SHLPFIELD
    changing
      !CT_SHLP_SELOPT type DDSHSELOPS .
  methods GET_REPOSITORY
    returning
      value(RV_REPOSITORY) type SAEARCHIVI
    raising
      /IWBEP/CX_MGW_TECH_EXCEPTION .
  methods APPROVE
    importing
      !I_REINR type ZEHR_REINR optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
      !IT_PARAM type /IWBEP/T_MGW_NAME_VALUE_PAIR optional
    exporting
      !ES_DATA type ZCL_ZHR_FI_TV_REQ_MPC=>TS_HANDLERRETURN
      !EV_MESSAGE type STRING .
  methods NOTAPPROVE
    importing
      !I_REINR type ZEHR_REINR optional
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods CALC_SUM
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type DATA .
  methods MULTIPLEAPPROVE
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type ref to DATA .
  methods CALC_NDS
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type DATA .
  methods GET_CARDSET
    importing
      !IV_PERNR type PERSNO
    changing
      !CT_SET type ZHR_UI_TRIP_CARD_T .
  methods CREATE_ZPL_ERROR
    importing
      !IV_PERNR type PERSNO
      !IV_REINR type REINR
      !IV_MESSAGE type STRING .
  methods CREATE_ZPL
    importing
      !IV_PERNR type PERSNO
      !IV_REINR type REINR
    exporting
      !EV_MESSAGE type ZHRE_UI_TRIP_ZPL_MESSAGE
      !EV_EBELN type EBELN .
  methods GET_VERP
    importing
      !IO_TECH_REQUEST_CONTEXT type ref to /IWBEP/IF_MGW_REQ_FUNC_IMPORT
    exporting
      !ER_DATA type DATA .
  methods WRITE_TEXT
    exporting
      !IV_TEXT_ID type THEAD-TDNAME
      !IV_TEXT type STRING .
  methods WRITE_CHANGE_ATTRIBUTES
    importing
      !IV_REQUEST type ZHR_UI_FI_TV_REQUEST .
  methods GET_ENTITY_REQUESTSET
    importing
      !IV_REINR type REINR
      !IV_USER type UNAME
      !IV_APPID type STRING
    changing
      !CV_PERNR type PERSNO
      !CV_SUBTY type SUBTY
      !CS_ENTITY type ZHR_UI_FI_TV_REQUEST .
  methods CHECK_CHANGE_REQUSET_TYPE_H
    importing
      !IV_BLOCKNAME type STRING
      !IS_OLD type ZHR_UI_TRIP_CHECK_CHANGE_S
      !IS_NEW type ZHR_IU_TRIP_S
    changing
      !CT_LOG type ZHR_TRIP_CHLOG_T
      !CS_LOG type ZHRT_TRIP_CHLOG .
  methods CHECK_CHANGE_REQUSET_TYPE_INI
    importing
      !IV_BLOCKNAME type STRING
      !IS_OLD type ZHR_UI_TRIP_CHECK_CHANGE_S
      !IS_NEW type ZHR_IU_TRIP_S
    changing
      !CT_LOG type ZHR_TRIP_CHLOG_T
      !CS_LOG type ZHRT_TRIP_CHLOG .
  methods CHECK_CHANGE_REQUSET_TYPE_OTHE
    importing
      !IV_BLOCKNAME type STRING
      !IS_OLD type ZHR_UI_TRIP_CHECK_CHANGE_S
      !IS_NEW type ZHR_IU_TRIP_S
    changing
      !CT_LOG type ZHR_TRIP_CHLOG_T
      !CS_LOG type ZHRT_TRIP_CHLOG .
ENDCLASS.



CLASS ZCL_ZHR_FI_TV_REQ_DPC_EXT IMPLEMENTATION.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_DEEP_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IO_DATA_PROVIDER               TYPE REF TO /IWBEP/IF_MGW_ENTRY_PROVIDER
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_EXPAND                      TYPE REF TO /IWBEP/IF_MGW_ODATA_EXPAND
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [<---] ER_DEEP_ENTITY                 TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD /iwbep/if_mgw_appl_srv_runtime~create_deep_entity.
  DATA: ls_entity           TYPE zcl_zhr_fi_tv_req_mpc=>ts_request,
        lv_morei            TYPE ptrv_head-morei,
        lv_head             TYPE ftpt_req_head,
        lv_period           TYPE ptrv_perod VALUE '000',
        lt_request          TYPE TABLE OF  ftpt_request,
        ls_request          LIKE LINE OF lt_request,
        lt_request_trip     TYPE TABLE OF ftpt_request,
        ls_request_trip     LIKE LINE OF lt_request_trip,
        lt_req_reason       TYPE TABLE OF  ftpt_req_reason,
        ls_req_reason       LIKE LINE OF lt_req_reason,
        lt_req_account      TYPE TABLE OF ftpt_req_account,
        ls_req_account      LIKE LINE OF lt_req_account,
        lt_req_advance      TYPE TABLE OF ftpt_req_advance,
        ls_req_advance      LIKE LINE OF lt_req_advance,
        lt_req_head         TYPE TABLE OF  ftpt_req_head,
        ls_req_head         LIKE LINE OF lt_req_head,
        lt_user             TYPE TABLE OF  ptk99,
        ls_user             LIKE LINE OF lt_user,
        lv_locking_user     TYPE sy-uname,
        ls_address          TYPE bapiaddr3,
        lt_return           TYPE TABLE OF bapiret2,
        lt_enq              TYPE TABLE OF seqg7,
        lv_subrc            TYPE i,
        ls_enq_del          TYPE seqg3,
        lt_deq              TYPE TABLE OF seqg3,
        l_ret               TYPE bapireturn,
        ls_frame            TYPE zstv_eksh_framedata,
        l_region            TYPE t706v-rgion,
        l_fistl             TYPE ptp02-zzfistl,
        l_kostl             TYPE p0001-kostl,
        l_date              TYPE dats,
        lt_p0001            TYPE TABLE OF p0001,
        ls_p0001            TYPE p0001,
        lt_p0017            TYPE TABLE OF p0017,
        ls_p0017            TYPE p0017,
        lt_p0105            TYPE TABLE OF p0105,
        ls_p0105            TYPE p0105,
        lt_split_reason     TYPE soli_tab,
        ls_framedata        TYPE zstv_eksh_framedata,
        lt_receipts         TYPE TABLE OF zsfitv_eksh_receipts, "zstv_eksh_bapitrvreo,
        ls_receipts         LIKE LINE OF lt_receipts,
        lt_addinfo          TYPE TABLE OF  bapitraddi,
        ls_addinfo          LIKE LINE OF lt_addinfo,
        lt_advances         TYPE TABLE OF zstv_eksh_advances,
        ls_advances         LIKE LINE OF lt_advances,
        lt_stopover         TYPE TABLE OF  bapitrvsto,
        ls_stopover         LIKE LINE OF lt_stopover,
*      PARTICIPANTS TYPE  PTRV_BAPI_T_PARTICIPANTS OP
*      TEXT STRUCTURE  BAPITRTEXT OPTIONAL
*      MILEAGE STRUCTURE  BAPITRVMIL OPTIONAL
*      DEDUCTIONS STRUCTURE  BAPITRVDED OPTIONAL
*      TRANSPORT STRUCTURE  BAPITRVTRN OPTIONAL
*      COSTDIST_STOP STRUCTURE  BAPITRVCOS OPTIONAL
*      COSTDIST_RECE STRUCTURE  BAPITRVCOR OPTIONAL
*      COSTDIST_MILE STRUCTURE  BAPITRVCOM OPTIONAL
        lt_costdist_trip    TYPE TABLE OF  bapitrvcot,
        ls_costdist_trip    LIKE LINE OF lt_costdist_trip,
        lt_userdata         TYPE ptrv_bapi_t_userdata,
        ls_userdata         LIKE LINE OF lt_userdata,
        ls_status           TYPE bapitrvsta,
        ls_return           TYPE bapireturn,
        lv_date             TYPE dats,
        lv_time             TYPE tims,
        lv_str              TYPE string,
        lt_cdtxt            TYPE TABLE OF cdtxt,
        lt_ztrip            TYPE zhrt_ui_trip,
        lt_ztrip_old        TYPE zhrt_ui_trip,
        lv_status2          TYPE zhrt_ui_trip-status_2,
        lv_approver         TYPE uname,
        lv_write_change_doc TYPE abap_bool VALUE abap_true.
  FIELD-SYMBOLS: <ud>      LIKE LINE OF lt_userdata,
                 <stopov2> LIKE LINE OF lt_stopover.
* Макрос для объединения записей с одним видом расхода в userdata (Смета)
  DEFINE m_collect_userdata.
    READ TABLE lt_userdata ASSIGNING <ud> WITH KEY zzspkzl = &1-zzspkzl zzexpty = &1-zzexpty zzpreis = &1-zzpreis.
    IF sy-subrc EQ 0.
*      <ud>-zzpreis = <ud>-zzpreis + &1-zzpreis.
      <ud>-zzwrbtr = <ud>-zzwrbtr + &1-zzwrbtr.
      <ud>-zzdmbtr = <ud>-zzdmbtr + &1-zzdmbtr.
      <ud>-zzmenge = <ud>-zzmenge + 1."&1-zzmenge.
    ELSE.
      APPEND &1 TO lt_userdata.
    ENDIF.
  END-OF-DEFINITION.
  DEFINE m_read_inf.
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = &1
        infty     = &2
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = &3.
    READ TABLE &3 INDEX 1 INTO &4.
  END-OF-DEFINITION.

  DEFINE m_send_mail.
*отправка уведомления
    SUBMIT zhr_fio_change_status_mail
    WITH p_trip EQ &1   "  lv_head-reinr
    WITH p_pernr EQ &2    " lv_head-pernr
*    with p_st eq lv_status2
    WITH p_tr_req = abap_true
    WITH p_ini = abap_false "to reset default
    AND RETURN.
  END-OF-DEFINITION.


  CASE io_tech_request_context->get_entity_set_name( ).
    WHEN 'RequestSet'.
      io_data_provider->read_entry_data( IMPORTING es_data = ls_entity ).

*      if ls_entity-action = 3.
*        ls_entity-reinr = ''.
*        copy_data_to_ref( exporting is_data = ls_entity
*                                   changing cr_data = er_deep_entity ).
*      else

      write_change_attributes( EXPORTING iv_request = ls_entity ).

      IF ls_entity-action <= 5. "операции с заявкой на командировку
        IF ls_entity-action = 5 AND ls_entity-pernr IS NOT INITIAL AND ls_entity-reinr IS NOT INITIAL.
          DATA: lt_trip_history TYPE TABLE OF zhrt_ui_trip.
          get_history( EXPORTING
                    iv_pernr = ls_entity-pernr
                    iv_reinr = ls_entity-reinr
                    iv_app_id = ''
                  CHANGING
                    ct_trip = lt_trip_history ).
          READ TABLE lt_trip_history WITH KEY status_1 = '1' status_2 = '8' TRANSPORTING NO FIELDS.
          IF sy-subrc NE 0.
            READ TABLE lt_trip_history WITH KEY status_1 = '1' status_2 = '10' TRANSPORTING NO FIELDS.
            IF sy-subrc NE 0.
              ls_entity-action = 2.
              ls_entity-status_1 = 1.
              ls_entity-status_2 = 2.
              DATA(lv_rej) = abap_true.
            ENDIF.
          ENDIF.
        ENDIF.
        CALL FUNCTION 'HR_EMPLOYEE_ENQUEUE'
          EXPORTING
            number       = ls_entity-pernr
          IMPORTING
            locking_user = lv_locking_user.
        IF lv_locking_user IS NOT INITIAL.
          CALL FUNCTION 'BAPI_USER_GET_DETAIL'
            EXPORTING
              username = lv_locking_user
            IMPORTING
              address  = ls_address
            TABLES
              return   = lt_return.
          CONCATENATE '(Внутренний номер:' ls_address-tel1_ext ')' INTO DATA(extension).

          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              textid = VALUE #( msgid = 'PBAS_SERVICE'
                                msgno = 001
                                attr3 = ls_address-fullname
                                attr4 = extension ).
        ELSE.
          DATA lv_user  TYPE sy-uname.
          m_read_inf ls_entity-pernr '0105' lt_p0105 ls_p0105.
          IF lt_p0105[] IS NOT INITIAL.
            lv_user = VALUE #( lt_p0105[ 1 ]-usrid OPTIONAL ).
          ENDIF.

          LOOP AT ls_entity-totrips ASSIGNING FIELD-SYMBOL(<tr>) WHERE request_type CS 'H'.
            CLEAR: lv_date, lv_time.
            CONVERT TIME STAMP <tr>-date_time_beg TIME ZONE '' INTO
            DATE lv_date TIME lv_time.
            <tr>-date_beg = lv_date.
            <tr>-time_beg = lv_time.
            CLEAR: lv_date, lv_time.
            CONVERT TIME STAMP <tr>-date_time_end TIME ZONE '' INTO
            DATE lv_date TIME lv_time.
            <tr>-date_end = lv_date.
            <tr>-time_end = lv_time.
          ENDLOOP.

          lv_morei = 33.

          DATA ls_perio TYPE ptrv_perio.
          DATA ls_head TYPE ptrv_head.
          DATA lv_update_flag TYPE flag.
          lv_update_flag = abap_true.
          DATA lv_change_indicator TYPE c.
          DATA count TYPE i VALUE 1.
          SORT ls_entity-totrips BY date_beg.
          LOOP AT ls_entity-totrips ASSIGNING FIELD-SYMBOL(<trips>).  " where request_type is initial.
            ls_request-pernr = ls_entity-pernr.
            IF ls_request-reinr IS INITIAL.
              ls_request-reinr = ls_entity-reinr.
            ENDIF.
            ls_request-plannr = '01'.
            ls_request-variante = '01'.
            ls_request-variantvrs = '99'.
            ls_request-requestvrs = '99'.
            ls_request-plan_request = 'R'.
            ls_request-request = sy-tabix.  "count.
            ls_request-itinerary_number = <trips>-itinerarynumber. " '01'.

            CASE <trips>-request_type.
              WHEN ''.
                ls_request-date_beg = <trips>-date_beg.
                ls_request-date_end = <trips>-date_end.
                ls_request-time_beg = '000000'.
                ls_request-time_end = '240000'.
*              ls_request-date_end = ls_entity-dateend.
                ls_request-location_end = <trips>-cityfrom.
                ls_request-country_end = COND #( WHEN <trips>-country_end IS NOT INITIAL THEN <trips>-country_end ELSE 'RU' )."<trips>-country_end.
                ls_request-zzorg = <trips>-zzorg.
              WHEN 'H'.
                ls_request-date_beg = <trips>-date_beg.
                ls_request-time_beg = <trips>-time_beg.
                ls_request-time_end = '240000'.
                ls_request-date_end = <trips>-date_end.
                ls_request-time_end = <trips>-time_end.
                ls_request-location_beg = ''.
                ls_request-location_end = <trips>-cityto.
                <trips>-hoteloption = <trips>-comment1.
                ls_request-comment1 = <trips>-hoteloption.
              WHEN OTHERS.
                ls_request-date_beg = <trips>-date_beg.
                ls_request-time_beg = '000000'.
                ls_request-time_end = '240000'.
                ls_request-date_end = <trips>-date_end.
                ls_request-location_beg = <trips>-cityfrom.  " ''.
                ls_request-country_beg = COND #( WHEN <trips>-country_end IS NOT INITIAL THEN <trips>-country_end ELSE 'RU' )."<trips>-country_end.
                ls_request-location_end = <trips>-cityto.
                ls_request-country = COND #( WHEN <trips>-country_end IS NOT INITIAL THEN <trips>-country_end ELSE 'RU' ). "<trips>-country_end.
            ENDCASE.
            ls_request-country_beg = 'RU'.
            ls_request-country = COND #( WHEN <trips>-country_end IS NOT INITIAL THEN <trips>-country_end ELSE 'RU' )."'RU'.   " <trips>-country_beg.  "
            ls_request-region = <trips>-region.
            ls_request-country_end = COND #( WHEN <trips>-country_end IS NOT INITIAL THEN <trips>-country_end ELSE 'RU' )."<trips>-country_end."'RU'.    "
            ls_request-request_type = <trips>-request_type.
            ls_request-item = '000'.
            ls_request-reason = ls_entity-reason.
            ls_request-first_tcode = 'TP04'.
            ls_request-price = <trips>-price.
            ls_request-comment1 = <trips>-hoteloption.
            APPEND ls_request TO lt_request.
          ENDLOOP.

          DATA: lv_date_st TYPE tims.
          LOOP AT lt_request ASSIGNING FIELD-SYMBOL(<request>) WHERE request_type IS INITIAL.
            IF lv_date_st IS INITIAL.
              <request>-time_beg = '000100'.
            ELSE.
              <request>-time_beg = lv_date_st.
              CLEAR lv_date_st.
            ENDIF.
            IF <request>-date_beg = <request>-date_end.
              <request>-time_end = '000200'.
              lv_date_st = '000200'.
            ELSE.
              <request>-time_end = '000100'.
            ENDIF.
          ENDLOOP.



          FIELD-SYMBOLS <request2> LIKE LINE OF lt_request.
          lv_time = '000100'.
          DATA(lv_tabix) = 0." lines( lt_stopover ).
          LOOP AT lt_request ASSIGNING <request> WHERE request_type IS INITIAL.
*              <stopov>-key_stop = sy-tabix.
            IF <request2> IS ASSIGNED.
              IF <request>-date_beg EQ <request>-date_end AND <request2>-date_beg EQ <request2>-date_end AND <request>-date_beg EQ <request2>-date_end.
                <request>-time_beg = lv_time.
                lv_time+2(2) = lv_time+2(2) + 1.
                <request>-time_end = lv_time.
              ELSE.
                IF <request>-date_beg EQ <request>-date_end AND sy-tabix NE lv_tabix.
                  lv_time+2(2) = <request>-time_beg+2(2) + 1.
                  <request>-time_end = lv_time.

                ELSE.
                  lv_time = '000100'.
                  <request>-time_end = lv_time.
                  IF <request2>-date_end EQ <request>-date_beg.
                    <request>-time_beg = <request2>-time_end.
                  ENDIF.
                ENDIF.
              ENDIF.
            ELSE.
              IF <request>-date_beg EQ <request>-date_end AND sy-tabix NE lv_tabix.
                lv_time+2(2) = <request>-time_beg+2(2) + 1.
                <request>-time_end = lv_time.
              ELSE.
                lv_time = '000100'.
                <request>-time_end = lv_time.
              ENDIF.
            ENDIF.
            READ TABLE lt_request INDEX sy-tabix ASSIGNING <request2>.
          ENDLOOP.





          lv_head-pernr = ls_entity-pernr.
          lv_head-reinr = ls_entity-reinr.
          lv_head-requestvrs = '99'.
          lv_head-plan_request = 'R'.
          lv_head-location_end = ls_entity-totrips[ 1 ]-cityfrom. "cityto.
          lv_head-country_end = COND #( WHEN ls_entity-totrips[ 1 ]-country_end IS NOT INITIAL THEN ls_entity-totrips[ 1 ]-country_end ELSE 'RU' )."'RU'. "ls_entity-country.
          lv_head-request_reason = ls_entity-reason_text.
          lv_head-date_beg = ls_entity-datebegin.
          lv_head-date_end = ls_entity-dateend.
          lv_head-time_beg = '000000'.
          lv_head-time_end = '240000'.
          lv_head-activity_type = 'T'.
          lv_head-estimated_cost = 0.
          lv_head-currency = 'RUB'.
          lv_head-status = 0.
          lv_head-carry_oth = 0.
          lv_head-zzsdescr_code = ls_entity-trip_goal.
          lv_head-zzbasic_trip = ls_entity-basic_trip.

          lv_str = ls_entity-reason_text.
          CALL FUNCTION 'ZHR_SLPIT_STRING'
            EXPORTING
              string        = lv_str
              length        = 72
              use_separator = 'X'
            TABLES
              split         = lt_split_reason.
          LOOP AT lt_split_reason ASSIGNING FIELD-SYMBOL(<line>).
            ls_req_reason-pernr = ls_entity-pernr.
            ls_req_reason-reinr = ls_entity-reinr.
            ls_req_reason-requestvrs = '99'.
            ls_req_reason-plan_request = 'R'.
            ls_req_reason-line = sy-tabix.
            ls_req_reason-text = <line>-line.
            APPEND ls_req_reason TO lt_req_reason.
          ENDLOOP.
          IF sy-subrc NE 0." AND ls_entity-reason_text IS NOT INITIAL.
            CLEAR sy-subrc.
            ls_req_reason-pernr = ls_entity-pernr.  " '00020483'. " ls_entity-pernr.
            ls_req_reason-reinr = ls_entity-reinr.
            ls_req_reason-requestvrs = '99'.
            ls_req_reason-plan_request = 'R'.
            ls_req_reason-line = '001'.
            ls_req_reason-text = ls_entity-reason_text.
            APPEND ls_req_reason TO lt_req_reason.
          ENDIF.

          IF ls_entity-action = '3'.
            CLEAR ls_entity-reinr.
          ENDIF.
          IF ls_entity-reinr IS INITIAL.  " or ls_entity-reinr is not initial.
            MOVE-CORRESPONDING lv_head TO ls_head.
            ls_head-kztkt = 'A'.
            CALL FUNCTION 'FITP_CREATE_TRIP_FROM_REQUEST'
              EXPORTING
                morei           = lv_morei
*               I_FM_POSTING_DATE       =
              IMPORTING
                wa_head         = ls_head
                wa_perio        = ls_perio
              TABLES
                t_req_head      = lt_req_head
                t_request       = lt_request
                t_req_reason    = lt_req_reason
                t_req_account   = lt_req_account
                t_req_advance   = lt_req_advance
                t_user          = lt_user
              CHANGING
                wa_req_head     = lv_head
              EXCEPTIONS
                creation_failed = 1
                enqueue_failed  = 2
                OTHERS          = 3.
            lv_update_flag = abap_false.
            lv_change_indicator = 'U'.

          ELSE.
            lv_update_flag = abap_true.
            lv_change_indicator = 'U'.

          ENDIF.
          IF sy-subrc = 0.
*            clear: lt_req_reason[].
*            APPEND INITIAL LINE TO lt_req_head ASSIGNING FIELD-SYMBOL(<head>).
*            MOVE-CORRESPONDING lv_head to <head>.
*            <head>-kztkt = 'A'.
            DATA(lt_request_old) = lt_request[].
            CALL FUNCTION 'FITP_UPDATE_REQUEST'
              EXPORTING
                wa_request_head        = lv_head
*               IT_REQ_CAT             =
              IMPORTING
                return                 = ls_return
              TABLES
                request_head           = lt_req_head
                request                = lt_request
                account                = lt_req_account
                advance                = lt_req_advance
                reason                 = lt_req_reason
              EXCEPTIONS
                database_error_request = 1
                OTHERS                 = 2.
            IF sy-subrc <> 0.
* Implement suitable error handling here
            ENDIF.
* Определяем схему командировки
            READ TABLE lt_request ASSIGNING FIELD-SYMBOL(<req>) INDEX 1.
            IF sy-subrc EQ 0.
              IF <req>-country_end NE 'RU'.
                DATA(lv_schema) = '02'.
              ELSE.
                lv_schema = '01'.
              ENDIF.
            ENDIF.
* Схема для trip
            DATA(lv_schema_ztrip) = '01'.
            LOOP AT lt_request ASSIGNING <req> WHERE country_end NE 'RU'.
              lv_schema_ztrip = '02'.
            ENDLOOP.
* Виды расходов PR05
            SELECT * FROM zhrt_ui_trip_map INTO TABLE @DATA(lt_mup).
            LOOP AT lt_mup ASSIGNING FIELD-SYMBOL(<mup>).
              CONDENSE <mup>-type_trip NO-GAPS.
            ENDLOOP.
* Типы транспорта которые на фронте
            SELECT id, name FROM zthr_tr_trantype INTO TABLE @DATA(lt_type_trans).
* Таблица STOPOVER (данные по этапам, пунктам назначения командировки)
            FIELD-SYMBOLS <stopov> LIKE LINE OF lt_stopover.
            DATA lv_first TYPE flag.
            LOOP AT ls_entity-totrips ASSIGNING FIELD-SYMBOL(<trips1>) WHERE request_type = ''.
*              CHECK sy-tabix NE 1.
              CASE <trips1>-cityfrom.
                WHEN 'Москва г'.
                  l_region = 'MSK'.
                WHEN 'Санкт-Петербург г'.
                  l_region = 'SPB'.
                WHEN OTHERS.
                  CLEAR l_region.
              ENDCASE.
              ls_stopover-dep_date = <trips1>-date_beg.
              IF <stopov> IS ASSIGNED.
                IF <stopov>-arr_date = <trips1>-date_beg AND l_region IS NOT INITIAL.
                  ls_stopover-dep_date = <stopov>-arr_date = <stopov>-arr_date - 1.
                ELSE.
                  <stopov>-arr_date = <trips1>-date_beg.
                ENDIF.
              ENDIF.
              ls_stopover-dep_time = '000100'.
              ls_stopover-arr_date = <trips1>-date_end + 1.
              ls_stopover-arr_time = '000100'.
              ls_stopover-location = <trips1>-cityfrom.
              ls_stopover-country = <trips1>-country_end.
              ls_stopover-t_actype = ls_entity-trip_type.

              ls_stopover-region = l_region.
              ls_stopover-t_actype = ''.
              APPEND ls_stopover TO lt_stopover ASSIGNING <stopov>.
              CLEAR ls_stopover.
            ENDLOOP.
            FIELD-SYMBOLS: <stopover> LIKE LINE OF lt_stopover.
            IF lt_stopover[] IS NOT INITIAL.
              READ TABLE lt_stopover INDEX lines( lt_stopover ) ASSIGNING <stopover>.
              <stopover>-arr_date = lv_head-date_end.
            ENDIF.

* Страна представительства сотрудника
            m_read_inf ls_entity-pernr '0001' lt_p0001 ls_p0001.
            IF ls_p0001-werks = 'C000' AND ls_p0001-gsber = '2010'.
              DATA(lv_country_empl) = 'CN'.
            ELSE.
              lv_country_empl = 'RU'.
            ENDIF.
*            IF lt_stopover[] IS NOT INITIAL.
*              READ TABLE lt_stopover INDEX lines( lt_stopover ) ASSIGNING <stopov>.
*              IF sy-subrc EQ 0.
*                <stopov>-arr_date = <stopov>-arr_date - 1.
*                IF lv_schema EQ '02'.
*                  <stopov>-arr_time = '240000'.
*                ELSE.
*                  IF <stopov>-country NE 'RU'.
*                    IF ls_p0001-werks = 'C000' AND ls_p0001-gsber = '2010'.
*                      ls_stopover-country = 'CN'.
*                    ELSE.
*                      ls_stopover-country = 'RU'.
*                    ENDIF.
*                    ls_stopover-dep_date = ls_stopover-arr_date = <stopov>-arr_date.
*                    ls_stopover-dep_time = '000100'.
*                    ls_stopover-arr_time = '240000'.
*                    APPEND ls_stopover TO lt_stopover.
*                  ELSE.
*                    <stopov>-arr_time = '000100'.
**                    <stopov>-arr_date = <stopov>-arr_date - 1.
*                  ENDIF.
*                ENDIF.
*              ENDIF.
*            ENDIF.

            CLEAR lv_time.

            LOOP AT lt_stopover ASSIGNING <stopov>.
*              CHECK sy-tabix NE 1.
              IF ( <stopov>-region EQ 'MSK' OR <stopov>-region EQ 'SPB' ) AND <stopov>-arr_date NE <stopov>-dep_date AND sy-tabix NE 1.
                IF <stopov>-dep_date NE <stopov>-arr_date.
                  <stopov>-dep_date = <stopov>-dep_date + 1.
                ENDIF.
                CHECK <stopover> IS ASSIGNED.
                <stopover>-arr_date = <stopover>-arr_date + 1.
              ENDIF.
              READ TABLE lt_stopover INDEX sy-tabix ASSIGNING <stopover>.
            ENDLOOP.


            lv_time = '000100'.
            lv_tabix = lines( lt_stopover ).
            LOOP AT lt_stopover ASSIGNING <stopov>.
              <stopov>-key_stop = sy-tabix.
              IF <stopov2> IS ASSIGNED.
                IF <stopov>-dep_date EQ <stopov>-arr_date AND <stopov2>-dep_date EQ <stopov2>-arr_date AND <stopov>-dep_date EQ <stopov2>-arr_date.
                  <stopov>-dep_time = lv_time.
                  lv_time+2(2) = lv_time+2(2) + 1.
                  <stopov>-arr_time = lv_time.
                ELSE.
                  IF <stopov>-dep_date EQ <stopov>-arr_date AND sy-tabix NE lv_tabix.
                    lv_time+2(2) = <stopov>-dep_time+2(2) + 1.
                    <stopov>-arr_time = lv_time.

                  ELSE.
                    lv_time = '000100'.
                    <stopov>-arr_time = lv_time.
                    IF <stopov2>-arr_date EQ <stopov>-dep_date.
                      <stopov>-dep_time = <stopov2>-arr_time.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ELSE.
                IF <stopov>-dep_date EQ <stopov>-arr_date AND sy-tabix NE lv_tabix.
                  lv_time+2(2) = <stopov>-dep_time+2(2) + 1.
                  <stopov>-arr_time = lv_time.
                ELSE.
                  lv_time = '000100'.
                  <stopov>-arr_time = lv_time.
                ENDIF.
              ENDIF.
              READ TABLE lt_stopover INDEX sy-tabix ASSIGNING <stopov2>.
            ENDLOOP.
            IF lt_stopover[] IS NOT INITIAL.
              READ TABLE lt_stopover INDEX lines( lt_stopover ) ASSIGNING <stopov>.
              IF sy-subrc EQ 0.
                <stopov>-arr_time = '240000'.
                <stopov>-arr_date = lv_head-date_end.
              ENDIF.
            ENDIF.
* 27.01.2021 *****************************
            DATA lv_count_country TYPE i.
            READ TABLE lt_stopover INDEX lines( lt_stopover ) ASSIGNING <stopov>.
            IF sy-subrc EQ 0.
              IF <stopov>-dep_date EQ <stopov>-arr_date.
                READ TABLE lt_stopover INDEX 1 ASSIGNING <stopov>.
                IF sy-subrc EQ 0.
                  IF <stopov>-country EQ 'RU'.
                    DATA(lv_penultimate) = lines( lt_stopover ) - 1.
                    READ TABLE lt_stopover INDEX lv_penultimate ASSIGNING <stopov>.
                    IF sy-subrc EQ 0.
                      IF <stopov>-country EQ 'RU'.
                        DATA(lv_ex) = abap_true.
                      ENDIF.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            READ TABLE lt_stopover INDEX 1 ASSIGNING <stopov>.
            IF <stopov>-country EQ 'RU'.
              DATA(lv_first_ru) = abap_true.
            ENDIF.
            IF lv_ex IS INITIAL.
******************************************
* Убираем первую строку где страна не равна стране представительства сотрудника
              DATA lv_skip TYPE flag.
              LOOP AT lt_stopover ASSIGNING <stopov> WHERE country NE lv_country_empl.
                DATA(lv_tabix_last_ne_ru) = sy-tabix.
                DATA(lv_last_ne_ru_date) = <stopov>-arr_date.
                DATA(lv_last_ne_ru_tims) = <stopov>-arr_time.
                DATA(lv_last_ne_ru_coun) = <stopov>-country.
                IF lv_skip IS INITIAL.
                  DATA(lv_first_ne_ru_date) = <stopov>-dep_date.
*                DATA(lv_first_ne_ru_tims) = <stopov>-dep_time.
                  DATA(lv_first_ne_ru_coun) = <stopov>-country.
                  DATA(lv_first_ne_ru_loca) = <stopov>-location.
                  DATA(lv_tabix_first_ne_ru) = sy-tabix.
                  lv_skip = abap_true.
                  TRY.
                      IF lv_tabix_last_ne_ru > 1.
                        READ TABLE lt_stopover INDEX lv_tabix_last_ne_ru - 1 ASSIGNING <stopover>.
                      ELSE.
                        UNASSIGN <stopover>.
                      ENDIF.
                    CATCH cx_root.
                  ENDTRY.
                  IF <stopover> IS ASSIGNED.
                    <stopover>-arr_time = '000000'.
                  ENDIF.
                  DELETE TABLE lt_stopover FROM <stopov>.
                ENDIF.
                UNASSIGN <stopover>.
              ENDLOOP.

** 2.  Для первой строки STOPOVER DEP_TIME = DEP_TIME+1 минута.
*            READ TABLE lt_stopover INDEX 1 ASSIGNING <stopov>.
*            IF sy-subrc EQ 0.
*              <stopov>-dep_time+2(2) = <stopov>-dep_time+2(2) + 1.
*              IF <stopov>-dep_time+2(2) = '60'.
*                <stopov>-dep_time+2(2) = '00'.
*                <stopov>-dep_time+0(2) = <stopov>-dep_time+0(2) + 1.
*              ENDIF.
*            ENDIF.
              IF lv_tabix_first_ne_ru NE lv_tabix_last_ne_ru.
                READ TABLE lt_stopover INDEX lv_tabix_last_ne_ru ASSIGNING <stopov>.
                IF sy-subrc EQ 0.
                  <stopov>-arr_time = '000000'.
                ENDIF.
              ENDIF.
* 3.  Если после строки с последней зарубежной страной есть строка со страной сотрудника представительства
* то для этой строки (COUNTRY_BEG <> стране представительства сотрудника) увеличить время на минуту
              IF lv_tabix_last_ne_ru IS NOT INITIAL.
                READ TABLE lt_stopover INDEX lv_tabix_last_ne_ru + 1 ASSIGNING <stopov>.
                IF sy-subrc EQ 0.
                  IF <stopov>-dep_time EQ <stopov>-arr_time.
                    <stopov>-dep_time+2(2) = <stopov>-dep_time+2(2) + 1.
                  ENDIF.
                  IF <stopov>-dep_time+2(2) = '60'.
                    <stopov>-dep_time+2(2) = '00'.
                    <stopov>-dep_time+0(2) = <stopov>-dep_time+0(2) + 1.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
*            lv_last_ne_ru_tims = '000000'.
            IF lt_stopover[] IS NOT INITIAL.
              READ TABLE lt_stopover INDEX lines( lt_stopover ) ASSIGNING <stopov>.
              IF <stopov>-arr_time EQ '000000' AND lv_first_ru NE abap_true.
                <stopov>-arr_time = lv_last_ne_ru_tims = '240000'.
                <stopov>-arr_date = lv_head-date_end.
              ENDIF.
            ENDIF.
* Таблица ADDINFO (доп.данные позиции АО)
            DATA l_number(3) TYPE c VALUE ' 1'.
            LOOP AT lt_request_old ASSIGNING <request>." WHERE request_type IS NOT INITIAL.
              DATA(ls_tot) = ls_entity-totrips[ sy-tabix ].
              IF <request>-request_type IS INITIAL.
                DATA(lv_country) = ls_tot-country_end.
                CASE <request>-location_end.
                  WHEN 'Москва г'.
                    l_region = 'MSK'.
                  WHEN 'Санкт-Петербург г'.
                    l_region = 'SPB'.
                  WHEN OTHERS.
                    CLEAR l_region.
                ENDCASE.
                CONTINUE.
              ENDIF.
              ls_addinfo-receiptno = ls_addinfo-p_doc = l_number.
              ls_addinfo-country = <request>-country_end."lv_country."
              ls_addinfo-region = l_region."<trips1>-region."lv_region."
              ls_addinfo-from_date = <request>-date_beg.
              ls_addinfo-to_date = <request>-date_end.
              DATA(ls_trip_tmp) = VALUE #( ls_entity-totrips[ sy-tabix ] OPTIONAL ).
              ls_addinfo-descript = VALUE #( lt_type_trans[ id = <request>-request_type ]-name OPTIONAL ).

              CLEAR: ls_addinfo-from_date, ls_addinfo-to_date.
              DATA(ls_add) = ls_addinfo.
              IF ls_trip_tmp-transfer IS NOT INITIAL.
                l_number = l_number + 1.
                ls_add-receiptno = ls_add-p_doc = l_number.
                ls_add-descript = COND #( WHEN ls_trip_tmp-transfer = '01' THEN 'Такси' ELSE 'Трансфер' ).
                APPEND ls_add TO lt_addinfo.
              ENDIF.
              IF <request>-request_type CS 'H'.
*                ls_addinfo-multipli = ls_trip_tmp-date_end - ls_trip_tmp-date_beg + 1.
                ls_addinfo-multipli = <request>-date_end - <request>-date_beg." + 1.
                IF <request>-date_end = <request>-date_beg.
                  ls_addinfo-multipli = '1'.
                ENDIF.
                ls_addinfo-from_date = ls_trip_tmp-date_beg.
                ls_addinfo-to_date = ls_trip_tmp-date_end.
              ELSE.
                CLEAR: ls_addinfo-from_date, ls_addinfo-to_date.
              ENDIF.
              APPEND ls_addinfo TO lt_addinfo.
              l_number = l_number + 1.
              CLEAR ls_addinfo.
            ENDLOOP.
* Таблица RECEIPTS (данные позиций АО)
*            m_read_inf ls_entity-pernr '0017' lt_p0017 ls_p0017.
            l_kostl = ls_p0001-kostl."COND #( WHEN ls_p0001-kostl IS NOT INITIAL THEN ls_p0001-kostl ELSE ls_p0017-kostl ).
            CALL FUNCTION 'Z_FITV_FISTL_GET'
              EXPORTING
                comp_code      = ls_p0001-bukrs
                costcenter     = l_kostl
                employeenumber = ls_entity-pernr
                dep_date       = lv_head-date_beg
              IMPORTING
                funds_ctr      = l_fistl.
            l_number = ' 1'.
            LOOP AT ls_entity-totrips ASSIGNING <trips1>.
              IF <trips1>-request_type IS INITIAL.
*                DATA(lv_waers) = <trips1>-waers.
                CONTINUE.
              ENDIF.
              DATA(lv_waers) = 'RUB'.
              ls_receipts-receiptno = l_number.
              ls_receipts-zznuuch = 'УЧ'. "забиваем хардом пока
              ls_receipts-rec_amount = <trips1>-price.
              ls_receipts-tax_code = 'Q0'. "забиваем хардом пока
              ls_receipts-rec_curr = 'RUB'."<trips1>-waers.
              ls_receipts-rec_date = <trips1>-date_beg.
              ls_receipts-exp_type = VALUE #( lt_mup[ type_trip = <trips1>-request_type ]-type_pr OPTIONAL ).
              ls_receipts-zzfistl = l_fistl.
              ls_receipts-zzccard = <trips1>-zzccard.
              DATA(ls_recei) = ls_receipts.
              IF <trips1>-transfer IS NOT INITIAL.
                l_number = l_number + 1.
                ls_recei-receiptno = l_number.
                ls_recei-exp_type = COND #( WHEN <trips1>-transfer = '01' THEN 'TAXI' ELSE 'TRNS' ).
                ls_recei-rec_amount = <trips1>-transfer_cost.
                APPEND ls_recei TO lt_receipts.
              ENDIF.
              APPEND ls_receipts TO lt_receipts.
              CLEAR ls_receipts.
              l_number = l_number + 1.
            ENDLOOP.
* Таблица USERDATA (данные СМЕТЫ)
            LOOP AT lt_request ASSIGNING <req>.
              DATA(ls_trip_in) = ls_entity-totrips[ sy-tabix ].
              IF <req>-request_type IS INITIAL.
*                lv_waers = ls_trip_in-waers.
                CONTINUE.
              ENDIF.
              lv_waers = 'RUB'.
              ls_userdata-zznrbel = <req>-request.
              ls_userdata-zzwaers = lv_waers.
              ls_userdata-zzspkzl = VALUE #( lt_mup[ type_trip = <req>-request_type ]-type_pr OPTIONAL ).
              ls_userdata-zzukurs = '1.0000'.
              ls_userdata-zzmenge = '1.000'.
              ls_userdata-zzexpty = COND #( WHEN ls_trip_in-paytype = '01' THEN '2' ELSE '1' )."ls_trip_in-paytype.
              ls_userdata-zzpreis = <req>-price.
              ls_userdata-zzwrbtr = <req>-price.
              ls_userdata-zzdmbtr = <req>-price.
              DATA(ls_trans) = ls_userdata.
              IF ls_trip_in-transfer IS NOT INITIAL.
                ls_trans-zzspkzl = COND #( WHEN ls_trip_in-transfer = '01' THEN 'TAXI' ELSE 'TRNS' ).
                ls_trans-zzpreis = ls_trans-zzwrbtr = ls_trans-zzdmbtr = ls_trip_in-transfer_cost.
                IF ls_entity-adv_payment EQ abap_true.
                  ls_trans-zzexpty = '1'.
                ENDIF.
                m_collect_userdata ls_trans.
              ENDIF.
              m_collect_userdata ls_userdata.
              CLEAR ls_userdata.
            ENDLOOP.
* Добавляем суточные в смету (АПДЕЙТ: СУТОЧНЫЕ НЕ ДОБАВЛЯЕМ, ДОБАВЛЯЮТСЯ АВТОМАТИЧЕСКИ В PR05)
* Выборка нормы суточных
            SELECT * FROM t706v
             WHERE morei = '33'
               AND kzpah = 'P'
               AND kztkt = ''
*               AND lndgr = 'RU'
               AND anzta = '999'
               AND begda <= @sy-datum
               AND endda >= @sy-datum
              INTO TABLE @DATA(lt_daily).
*          LOOP AT lt_request ASSIGNING <req> WHERE request_type IS INITIAL.
*            CLEAR ls_userdata.
**            ls_trip_in = ls_entity-totrips[ sy-tabix ].
*            READ TABLE ls_entity-totrips ASSIGNING FIELD-SYMBOL(<tot>) INDEX sy-tabix.
*            CHECK sy-subrc EQ 0.
*            DATA(l_count_day) = lv_head-date_end - lv_head-date_beg + 1.
*            ls_userdata-zznrbel = <req>-request.
*            ls_userdata-zzspkzl = 'VERP'.
*            ls_userdata-zzwaers = <tot>-waers.
*            ls_userdata-zzukurs = '1.0000'.
**            ls_userdata-zzmenge = l_count_day.
*            ls_userdata-zzexpty = '1'.
*            CASE ls_trip_in-cityfrom.
*              WHEN 'Москва г'.
*                l_region = 'MSK'.
*              WHEN 'Санкт-Петербург г'.
*                l_region = 'SPB'.
*              WHEN OTHERS.
*                CLEAR l_region.
*            ENDCASE.
*            <tot>-betfa = ls_userdata-zzpreis = VALUE #( lt_daily[ lndgr = <req>-country_end waers = <tot>-waers rgion = l_region ]-betfa OPTIONAL ).
*            ls_userdata-zzwrbtr = ls_userdata-zzdmbtr = ls_userdata-zzpreis * l_count_day.
*            m_collect_userdata ls_userdata.
*          ENDLOOP.

* необходимо снять блокировки с командировок, почему-то стандарт не снимает их сам
* Собираем блокировки по БО для текущего юзера
            CALL FUNCTION 'ENQUE_READ2'
              EXPORTING
                gname  = 'PTRV_HEAD'
                guname = sy-uname
              TABLES
                enq    = lt_enq.
* Записываем данные в таблицу для снятия блокировок
            LOOP AT lt_enq INTO DATA(ls_enq_read).
              MOVE-CORRESPONDING ls_enq_read TO ls_enq_del.
              APPEND ls_enq_del TO lt_deq.
            ENDLOOP.
* Снимаем блокировки
            CALL FUNCTION 'ENQUE_DELETE'
              EXPORTING
                check_upd_requests = 1
              IMPORTING
                subrc              = lv_subrc
              TABLES
                enq                = lt_deq.
            REFRESH: lt_enq, lt_deq.
* Получаем frame для дальнейшего апдейта
            CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
              EXPORTING
                employeenumber = ls_entity-pernr
                tripnumber     = lv_head-reinr
*               LANGUAGE       = SY-LANGU
*               CALCULATE_AMOUNTS       = ABAP_TRUE
*               PERIODNUMBER   = '000'
              IMPORTING
                return         = l_ret
                framedata      = ls_frame.
            ls_frame-t_schema = lv_schema.
            ls_frame-zzfistl = l_fistl.
            ls_frame-zznuuch = 'УЧ'.
            ls_frame-pd_meals = abap_true.
* Передаем данные в pr05
            SELECT SINGLE kztkt FROM ztv_eksh_kztkt
                    WHERE gcode = @ls_entity-trip_goal
                      AND begda <= @sy-datum
                      AND endda >= @sy-datum
                     INTO @ls_frame-t_actype.
            DATA: lt_return_trip_change TYPE TABLE OF bapiret2.
            ls_status-approved = '1'.
            ls_status-account = '0'.
            TRY.
                CASE ls_entity-totrips[ 1 ]-cityfrom.
                  WHEN 'Москва г'.
                    ls_frame-region = 'MSK'.
                  WHEN 'Санкт-Петербург г'.
                    ls_frame-region = 'SPB'.
                  WHEN OTHERS.

                ENDCASE.
              CATCH cx_root.
            ENDTRY.
            ls_frame-dep_date = ls_entity-datebegin.
            ls_frame-arr_date = ls_entity-dateend.

            IF lv_first_ne_ru_date IS NOT INITIAL.
              ls_frame-location = lv_first_ne_ru_loca.
              ls_frame-country = lv_first_ne_ru_coun.
              ls_frame-out_date = lv_first_ne_ru_date.
              ls_frame-out_time = '000000'. "lv_first_ne_ru_tims.
              ls_frame-ret_date = lv_last_ne_ru_date.
*              ls_frame-ret_time = lv_last_ne_ru_tims.
              IF lv_tabix_first_ne_ru NE lv_tabix_last_ne_ru OR lv_skip EQ abap_true.
                ls_frame-ret_time = lv_last_ne_ru_tims.
              ELSE.
                ls_frame-ret_time = '000000'.
              ENDIF.
              ls_frame-ret_coun = lv_last_ne_ru_coun.
            ENDIF.
            IF ls_frame-country NE 'RU'.
              CLEAR ls_frame-region.
            ENDIF.
            CALL FUNCTION 'Z_TV_BAPI_TRIP_CHANGE'
              EXPORTING
                employeenumber = ls_entity-pernr
                tripnumber     = lv_head-reinr
                framedata      = ls_frame
                status         = ls_status
              TABLES
                return         = lt_return_trip_change
                receipts       = lt_receipts
                addinfo        = lt_addinfo
**             PARTICIPANTS   =
**             ADVANCES       =
**             TEXT           =
**             MILEAGE        =
                stopover       = lt_stopover
**             DEDUCTIONS     =
**             TRANSPORT      =
*               COSTDIST_TRIP  = lt_costdist_trip
**             COSTDIST_STOP  =
**             COSTDIST_RECE  =
**             COSTDIST_MILE  =
                userdata       = lt_userdata.

            CLEAR: lt_userdata[].

            DATA lt_route TYPE zhr_ui_trip_approver_t.
            DATA ls_route LIKE LINE OF lt_route.


            ls_entity-reinr = lv_head-reinr.


*******************************************
            MOVE-CORRESPONDING ls_entity TO lt_ztrip.
            lt_ztrip-mandt = sy-mandt.        "KEY
            lt_ztrip-reinr = ls_entity-reinr. "KEY
            lt_ztrip-pernr = ls_entity-pernr.
            lt_ztrip-rdate = sy-datum.
            lt_ztrip-rtime = sy-uzeit.
            lt_ztrip-approver = lv_approver.
            lt_ztrip-goal_trip = ls_entity-trip_goal.
            lt_ztrip-reason_trip = ls_entity-reason_trip.".ls_entity-reason_text.
            DATA: lv_textname TYPE thead-tdname,
                  lv_text     TYPE string.
            lv_textname = 'OC' && ls_entity-pernr && ls_entity-reinr.
            lv_text = ls_entity-reason_trip.
            CALL METHOD write_text(
              IMPORTING
                iv_text_id = lv_textname
                iv_text    = lv_text ).
            lt_ztrip-seria = ls_entity-seria && ls_entity-seri0.
            lt_ztrip-daten = ls_entity-expire_date."ls_entity-datbg.
            lt_ztrip-nachn = ls_entity-fio.
            lt_ztrip-vorna = ls_entity-fio.
            lt_ztrip-author = COND #( WHEN lv_user IS INITIAL THEN sy-uname ELSE lv_user ).
            lt_ztrip-history_objectid = ls_entity-pernr && ls_entity-reinr.
            lt_ztrip-name_pass = ls_entity-name.
            lt_ztrip-last_name_pass = ls_entity-surname.
            lt_ztrip-issue_date = ls_entity-datbg.
            lt_ztrip-past_trip = ls_entity-past_trip.


            SELECT SINGLE *
                     FROM zhrt_ui_trip
                     INTO CORRESPONDING FIELDS OF lt_ztrip_old
                    WHERE zhrt_ui_trip~reinr = ls_entity-reinr.
            lt_ztrip_old-app_id = ''.
*            MODIFY zhrt_ui_trip FROM lt_ztrip.
*0 сохранение заявки на бронирование
*1 отправить
*2 сохранить
*3 копировать
*4 изменить
*5 отменить
            CASE ls_entity-action.
              WHEN '0'.
                IF ls_entity-reserv_not = abap_true.
*                  ls_entity-status_2 = lt_ztrip_old-status_2.
*                  lt_ztrip-status_1 = '2'.
*                  lt_ztrip-status_2 = '1'.
*                  m_send_mail lv_head-reinr lv_head-pernr.
                  MOVE lt_ztrip_old TO lt_ztrip.
                  ls_entity-status_1 = lt_ztrip-status_1 = lt_ztrip_old-status_1.
                  ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 = lt_ztrip_old-status_2.
                  lt_ztrip-reserv_st = lt_ztrip_old-reserv_st.
                  lt_ztrip-reserv_uname  = lt_ztrip_old-reserv_uname.
                  lt_ztrip-operation = '001'.
                  lv_approver = lt_ztrip-approver.
                  MODIFY zhrt_ui_trip FROM lt_ztrip.
                  lv_write_change_doc = abap_false.
                ENDIF.
              WHEN '1'.
*                lt_ztrip-status_1 = '1'.
                IF lt_ztrip_old-status_1 IS INITIAL.
                  lt_ztrip-status_1 = '1'.
                ELSE.
                  lt_ztrip-status_1 = lt_ztrip_old-status_1.
                ENDIF.
                ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 = '3'.
                get_appr_route( EXPORTING
                                  im_author = lv_user  "sy-uname
                                  iv_pernr = ls_entity-pernr
                                  im_type = ls_entity-trip_goal
                                  iv_past_trip = ls_entity-past_trip
                                  iv_status = '1'
                                CHANGING
                                  ch_tab = lt_route ).

                READ TABLE lt_route INTO ls_route WITH KEY uname = lv_user.

                READ TABLE lt_route INDEX sy-tabix + 1 INTO ls_route.
                lv_approver = ls_route-uname.
                IF ls_entity-trip_goal EQ '011' AND ls_route-dd EQ abap_true AND ls_entity-past_trip EQ abap_false.
                  CLEAR lv_approver.
                  lt_ztrip-edu_appr_flag = abap_true.
                ENDIF.
*                SELECT COUNT(*)
*                  FROM zhrt_ui_trip
*                  UP TO 1 ROWS
*                  WHERE reinr = lt_ztrip-reinr
*                    AND pernr = lt_ztrip-pernr.
*                IF sy-subrc <> 0.
*                  CLEAR lv_approver.
*                ENDIF.
                lt_ztrip-operation = '002'.
              WHEN '2'.
                IF lt_ztrip_old-status_1 IS INITIAL.
                  lt_ztrip-status_1 = '1'.
                ELSE.
                  lt_ztrip-status_1 = lt_ztrip_old-status_1.
                ENDIF.
                IF lv_rej EQ abap_true.
                  ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 = '2'.
                ELSE.
                  ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 = '1'.
*                  ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 = lt_ztrip_old-status_2.
                ENDIF.
                lv_approver = ''.
                lt_ztrip-operation = '001'.
              WHEN '3'.
                ls_entity-status_1 = '1'.
                ls_entity-status_2 = '1'.
                lt_ztrip-status_1 = '1'.
                lv_status2 = '1'.
                lv_approver = ''.
              WHEN '4'.
                lt_ztrip-operation = '009'.
                IF ls_entity-req_change_rs IS NOT INITIAL.
                  get_appr_route( EXPORTING
                                    im_author = lv_user  "sy-uname
                                    im_type = ls_entity-trip_goal
                                    iv_pernr = ls_entity-pernr
                                    iv_past_trip = ls_entity-past_trip
                                    iv_status = '1'
                                  CHANGING
                                    ch_tab = lt_route ).

                  READ TABLE lt_route INTO ls_route WITH KEY uname = lv_user.
                  READ TABLE lt_route INDEX sy-tabix + 1 INTO ls_route.
                  lv_approver = ls_route-uname.
                  IF lt_ztrip_old-status_2 EQ '8' OR lt_ztrip_old-status_2 EQ '10'.
                    ls_entity-status_1 = lt_ztrip-status_1 = '2'.
                    ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 ='3'.
                  ELSE.
                    ls_entity-status_1 = lt_ztrip-status_1 = '1'.
                    ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 ='3'.
                  ENDIF.
                ELSE.
                  ls_entity-status_1 = lt_ztrip-status_1 = lt_ztrip_old-status_1.
                  ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 = lt_ztrip_old-status_2.
                  lv_approver = lt_ztrip_old-approver.
                ENDIF.
                IF ls_entity-reserv_not = abap_true.
*                  ls_entity-status_2 = lt_ztrip_old-status_2.
*                  lt_ztrip-status_1 = '2'.
*                  lt_ztrip-status_2 = '1'.
                  MOVE lt_ztrip_old TO lt_ztrip.
*                  m_send_mail lv_head-reinr lv_head-pernr.
                  ls_entity-status_1 = lt_ztrip-status_1 = lt_ztrip_old-status_1.
                  ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 = lt_ztrip_old-status_2.
*                  lt_ztrip-reserv_st = lt_ztrip_old-reserv_st.
*                  lt_ztrip-reserv_uname  = lt_ztrip_old-reserv_uname.
                  MODIFY zhrt_ui_trip FROM lt_ztrip.
                  lv_write_change_doc = abap_false.
                ENDIF.
              WHEN '5'.
                lt_ztrip-operation = '008'.
                get_appr_route( EXPORTING
                                    im_author = lv_user  "sy-uname
                                    im_type = ls_entity-trip_goal
                                    iv_pernr = ls_entity-pernr
                                    iv_past_trip = ls_entity-past_trip
                                    iv_status = '1'
                                  CHANGING
                                    ch_tab = lt_route ).

                READ TABLE lt_route INTO ls_route WITH KEY uname = lv_user.
                READ TABLE lt_route INDEX sy-tabix + 1 INTO ls_route.
                lv_approver = ls_route-uname.
                ls_entity-status_1 = lt_ztrip-status_1 = '3'.
                ls_entity-status_2 = lt_ztrip-status_2 = lv_status2 ='3'.
              WHEN OTHERS.

            ENDCASE.

*            lt_ztrip-status_2 = lv_status2.
*            lt_ztrip-mobile_phone = lt_ztrip_old-mobile_phone.
            lt_ztrip-approver = lv_approver.
            lt_ztrip-aenam = sy-uname.

            lt_ztrip-app_id = 'REQ'.
**        lt_ztrip-rdate = sy-datum.
**        lt_ztrip-rtime = sy-uzeit.
            lt_ztrip-schem = lv_schema_ztrip.
            lt_ztrip-reserv_st = lt_ztrip_old-reserv_st.
            lt_ztrip-reserv_uname  = lt_ztrip_old-reserv_uname.
            MODIFY zhrt_ui_trip FROM lt_ztrip.




            IF lv_write_change_doc = abap_true.
              CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
                EXPORTING
                  objectid                = lt_ztrip-history_objectid "'0000000309'       "'0000000299'   "
                  tcode                   = sy-tcode
                  utime                   = sy-uzeit
                  udate                   = sy-datum
                  username                = sy-uname
*                 PLANNED_CHANGE_NUMBER   = ' '
                  object_change_indicator = lv_change_indicator
*                 PLANNED_OR_REAL_CHANGES = ' '
*                 NO_CHANGE_POINTERS      = ' '
                  upd_icdtxt_zhr_fio_trip = lv_change_indicator
*                 UPD_ZHRT_UI_REQUEST     = ' '
                  n_zhrt_ui_trip          = lt_ztrip
                  o_zhrt_ui_trip          = lt_ztrip_old
                  upd_zhrt_ui_trip        = lv_change_indicator
                TABLES
                  icdtxt_zhr_fio_trip     = lt_cdtxt
*                 XZHRT_UI_REQUEST        =
*                 YZHRT_UI_REQUEST        =
                .
            ENDIF.


            DATA: lt_zrequest TYPE TABLE OF zhrt_ui_request,
                  ls_zrequest TYPE zhrt_ui_request.

            LOOP AT ls_entity-totrips ASSIGNING FIELD-SYMBOL(<trip1>).

              ls_zrequest-mandt = sy-mandt.         "KEY
              ls_zrequest-reinr = ls_entity-reinr.  "KEY
              ls_zrequest-pernr = ls_entity-pernr.
              ls_zrequest-request = sy-tabix.       "KEY
              ls_zrequest-itinerary_number = <trip1>-itinerarynumber.
              ls_zrequest-class_air = <trip1>-class_air.
              ls_zrequest-airline = <trip1>-airline.
              ls_zrequest-flightnumber = <trip1>-flightnumber.
              ls_zrequest-baggage = <trip1>-baggage.
              ls_zrequest-transfer = <trip1>-transfer.
              ls_zrequest-transfer_cost = <trip1>-transfer_cost.
              ls_zrequest-hotel = <trip1>-hotel.
              ls_zrequest-class_rail = <trip1>-class_rail.
              ls_zrequest-class_hotel = <trip1>-class_hotel.
              ls_zrequest-class_room = <trip1>-class_room.
              ls_zrequest-hoteloption = <trip1>-hoteloption.
              ls_zrequest-type_class = <trip1>-type_class.
              ls_zrequest-paytype = <trip1>-paytype.
              ls_zrequest-direction = <trip1>-direction.


*           Суточные
              IF <trip1>-request_type = ''.
                CASE <trip1>-cityfrom.
                  WHEN 'Москва г'.
                    l_region = 'MSK'.
                  WHEN 'Санкт-Петербург г'.
                    l_region = 'SPB'.
                  WHEN OTHERS.
                    CLEAR l_region.
                ENDCASE.
                DATA(lv_count_day) = <trip1>-date_end - <trip1>-date_beg + 1.
                IF lv_count_day > 0.
                  IF <trip1>-country_end EQ 'RU'.
                    ls_zrequest-betfa = VALUE #( lt_daily[ lndgr = 'RU' waers = <trip1>-waers rgion = l_region ]-betfa OPTIONAL ).
                  ELSE.
                    ls_zrequest-betfa = VALUE #( lt_daily[ lndgr = 'ABR' ]-betfa OPTIONAL ).
                  ENDIF.
                ENDIF.
              ENDIF.
* Валюта
              IF <trip1>-country_end EQ 'RU'.
                ls_zrequest-waers = VALUE #( lt_daily[ lndgr = <trip1>-country_end waers = <trip1>-waers rgion = l_region ]-waers OPTIONAL ).
              ELSE.
                ls_zrequest-waers = VALUE #( lt_daily[ lndgr = 'ABR' ]-waers OPTIONAL ).
              ENDIF.
              MODIFY zhrt_ui_request FROM ls_zrequest.

              APPEND ls_zrequest TO lt_zrequest.
              CLEAR ls_zrequest.
              <trip1>-reinr = lv_head-reinr.
              <trip1>-pernr = lv_head-pernr.
              <trip1>-request = sy-tabix.
            ENDLOOP.
          ELSE.
            CALL FUNCTION 'HR_EMPLOYEE_DEQUEUE'
              EXPORTING
                number = ls_entity-pernr.

            DATA: lt_header  TYPE /iwbep/t_mgw_name_value_pair,
                  lv_message TYPE string.
*                  lv_msg     TYPE c LENGTH 55.

            FIELD-SYMBOLS: <fs_header>  TYPE LINE OF /iwbep/t_mgw_name_value_pair.

            lv_message = cl_http_utility=>escape_url( 'tech_err' ).
            MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4 INTO DATA(lv_msg).
            APPEND INITIAL LINE TO lt_header ASSIGNING <fs_header>.
            <fs_header>-name  = 'error'.
            <fs_header>-value = lv_message .
            RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
              EXPORTING
                textid                 = /iwbep/cx_mgw_busi_exception=>business_error
                http_header_parameters = lt_header
                message                = CONV #( lv_msg ). "'Техническая ошибка' ).

          ENDIF.

          copy_data_to_ref( EXPORTING is_data = ls_entity
                             CHANGING cr_data = er_deep_entity ).

          CALL FUNCTION 'HR_EMPLOYEE_DEQUEUE'
            EXPORTING
              number = ls_entity-pernr.
        ENDIF.
* 10 простое сохранение АО без изменений таблицы
      ELSEIF ls_entity-action = '10'.
        DATA(lv_save_message) = save_prepay( CHANGING cs_entity = ls_entity ).
        IF lv_save_message IS NOT INITIAL.
          lv_message = cl_http_utility=>escape_url( 'tech_err' ).

          APPEND INITIAL LINE TO lt_header ASSIGNING <fs_header>.
          <fs_header>-name  = 'error'.
          <fs_header>-value = lv_message .
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              textid                 = /iwbep/cx_mgw_busi_exception=>business_error
              http_header_parameters = lt_header
              message                = CONV #( lv_save_message ).
        ENDIF.
        ls_entity-change_flag = abap_true.
        copy_data_to_ref( EXPORTING is_data = ls_entity
                           CHANGING cr_data = er_deep_entity ).
      ELSEIF ls_entity-action = '6' OR ls_entity-action = '7'. "операции с авансовым отчетом
* 6 отправить авансовый отчет
* 7 сохранить авансовый отчет
        SELECT SINGLE *
                     FROM zhrt_ui_trip
                     INTO CORRESPONDING FIELDS OF lt_ztrip_old
                    WHERE zhrt_ui_trip~reinr = ls_entity-reinr.
        lt_ztrip = lt_ztrip_old.

        CASE ls_entity-action.
          WHEN '7'.
            IF ls_entity-status_1 IS INITIAL OR ( lt_ztrip_old-status_1 = '4' AND lt_ztrip_old-status_1 = '8' ).
              lt_ztrip-status_1 = '5'.
              ls_entity-status_1 = '5'.
              ls_entity-status_2 = '1'.
              lt_ztrip-status_2 = '1'.
              lv_approver = ''.
            ELSE.
              lt_ztrip-status_1 = ls_entity-status_1 = lt_ztrip_old-status_1.
              lt_ztrip-status_2 = ls_entity-status_2 = lt_ztrip_old-status_2.
              lv_approver = lt_ztrip_old-approver.
            ENDIF.
          WHEN '6'.
            ls_entity-status_1 = '5'.
            ls_entity-status_2 = '3'.
            lt_ztrip-status_1 = '5'.
            lt_ztrip-status_2 = '3'.
            lv_approver = ''.
        ENDCASE.
        lt_ztrip-approver = lv_approver.
        lt_ztrip-aenam = sy-uname.

        lt_ztrip_old-app_id = ''.
        lt_ztrip-app_id = 'AVA'.
        lt_ztrip-edit_flag = ls_entity-edit_flag.

        IF ls_entity-action NE 7.
          MODIFY zhrt_ui_trip FROM lt_ztrip.

          CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
            EXPORTING
              objectid                = lt_ztrip-history_objectid "'0000000309'       "'0000000299'   "
              tcode                   = sy-tcode
              utime                   = sy-uzeit
              udate                   = sy-datum
              username                = sy-uname
*             PLANNED_CHANGE_NUMBER   = ' '
              object_change_indicator = lv_change_indicator
*             PLANNED_OR_REAL_CHANGES = ' '
*             NO_CHANGE_POINTERS      = ' '
              upd_icdtxt_zhr_fio_trip = lv_change_indicator
*             UPD_ZHRT_UI_REQUEST     = ' '
              n_zhrt_ui_trip          = lt_ztrip
              o_zhrt_ui_trip          = lt_ztrip_old
              upd_zhrt_ui_trip        = lv_change_indicator
            TABLES
              icdtxt_zhr_fio_trip     = lt_cdtxt
*             XZHRT_UI_REQUEST        =
*             YZHRT_UI_REQUEST        =
            .
        ENDIF.
        lv_save_message = save_prepay( CHANGING cs_entity = ls_entity ).
        IF lv_save_message IS NOT INITIAL.
          lv_message = cl_http_utility=>escape_url( 'tech_err' ).

          APPEND INITIAL LINE TO lt_header ASSIGNING <fs_header>.
          <fs_header>-name  = 'error'.
          <fs_header>-value = lv_message .
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              textid                 = /iwbep/cx_mgw_busi_exception=>business_error
              http_header_parameters = lt_header
              message                = CONV #( lv_save_message ).
        ENDIF.

**отправка уведомления
*        submit zhr_fio_change_status_mail
*        with p_trip eq  lv_head-reinr
*        with p_pernr eq lv_head-pernr
**    with p_st eq lv_status2
*        with p_tr_req = abap_true
*              with p_ini = abap_false "to reset default
*        and return.
*        m_send_mail lv_head-reinr lv_head-pernr.


        copy_data_to_ref( EXPORTING is_data = ls_entity
                           CHANGING cr_data = er_deep_entity ).
      ELSEIF ls_entity-action = '8' OR ls_entity-action = '9'. "операции с отчетом о командировке
* 8 отправить отчет о командировке
* 9 сохранить отчет о командировке
        SELECT SINGLE *
                     FROM zhrt_ui_trip
                     INTO CORRESPONDING FIELDS OF lt_ztrip_old
                    WHERE zhrt_ui_trip~reinr = ls_entity-reinr.
        lt_ztrip = lt_ztrip_old.
*        lt_ztrip-trip_report = ls_entity-trip_report.
        CASE ls_entity-action.
          WHEN '9'.
            lt_ztrip-status_1 = '4'.
            ls_entity-status_1 = '4'.
            ls_entity-status_2 = '1'.
            lt_ztrip-status_2 = '1'.
            lv_approver = ''.
          WHEN '8'.
            ls_entity-status_1 = '4'.
            ls_entity-status_2 = '3'.
            lt_ztrip-status_1 = '4'.
            lt_ztrip-status_2 = '3'.
            lv_approver = ''.
            get_appr_route( EXPORTING
                                  im_author = lt_ztrip_old-author
                                  im_type = ls_entity-trip_goal
                                  iv_pernr = lt_ztrip_old-pernr
                                  iv_past_trip = ls_entity-past_trip
                                  iv_status = '4'
                              CHANGING
                                  ch_tab = lt_route ).
            READ TABLE lt_route INTO ls_route WITH KEY uname = lt_ztrip_old-author.
            IF ls_route-top EQ abap_true OR ls_route-subor_gid EQ abap_true.
              lv_approver = ls_route-uname.
            ELSE.
              READ TABLE lt_route INDEX sy-tabix + 1 INTO ls_route.
              lv_approver = ls_route-uname.
            ENDIF.
        ENDCASE.
        lt_ztrip-approver = lv_approver.
        lt_ztrip-aenam = sy-uname.
        lt_ztrip-rdate = sy-datum.
        lt_ztrip-rtime = sy-uzeit.
        lv_change_indicator = 'U'.
        lt_ztrip_old-app_id = ''.
        lt_ztrip-app_id = 'REP'.

*        DATA: lv_textname TYPE tdobname.
        CLEAR: lv_textname, lv_text.
        lv_textname = lt_ztrip-history_objectid.
        lv_text = ls_entity-trip_report.
        CALL METHOD write_text(
          IMPORTING
            iv_text_id = lv_textname
            iv_text    = lv_text ).

        MODIFY zhrt_ui_trip FROM lt_ztrip.


        CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
          EXPORTING
            objectid                = lt_ztrip-history_objectid "'0000000309'       "'0000000299'   "
            tcode                   = sy-tcode
            utime                   = sy-uzeit
            udate                   = sy-datum
            username                = sy-uname
*           PLANNED_CHANGE_NUMBER   = ' '
            object_change_indicator = lv_change_indicator
*           PLANNED_OR_REAL_CHANGES = ' '
*           NO_CHANGE_POINTERS      = ' '
            upd_icdtxt_zhr_fio_trip = lv_change_indicator
*           UPD_ZHRT_UI_REQUEST     = ' '
            n_zhrt_ui_trip          = lt_ztrip
            o_zhrt_ui_trip          = lt_ztrip_old
            upd_zhrt_ui_trip        = lv_change_indicator
          TABLES
            icdtxt_zhr_fio_trip     = lt_cdtxt.
        copy_data_to_ref( EXPORTING is_data = ls_entity
                           CHANGING cr_data = er_deep_entity ).
      ENDIF.
      IF ( ls_entity-action = '1' OR ls_entity-action = '2' OR ls_entity-action = '4'
        OR ls_entity-action = '5' OR ls_entity-action = '6' OR ls_entity-action = '8').
*        AND ls_entity-reserv_not = abap_false.
        m_send_mail ls_entity-reinr ls_entity-pernr.
      ENDIF.

      IF ls_entity-action NE '10'.
        SELECT SINGLE status_appr, status_calc
                INTO @DATA(ls_pr05_status)
                FROM zhrt_ui_trip_st
                WHERE zhrt_ui_trip_st~status_1 = @lt_ztrip-status_1
                  AND zhrt_ui_trip_st~status_2 = @lt_ztrip-status_2.

        DATA ls_return_1 TYPE bapireturn.

        CALL FUNCTION 'BAPI_TRIP_CHANGE_STATUS'
          EXPORTING
            employeenumber = lt_ztrip-pernr
            tripnumber     = lt_ztrip-reinr
            periodnumber   = lv_period "'000'
*           PRINTED_NEW    =
            approved_new   = ls_pr05_status-status_appr
            account_new    = ls_pr05_status-status_calc
*           SHOW_DIALOG    = ' '
*           ALWAYS_SET_STATUS            = ' '
*           SKIP_MILES_CUMUL             = ' '
          IMPORTING
            return         = ls_return_1
*           CURRENT_PERIOD_VERSION       =
*             CHANGING
*           CHANGED_TRIP_PERIO           =
          .

      ENDIF.

    WHEN OTHERS.
      super->/iwbep/if_mgw_appl_srv_runtime~create_deep_entity(
        EXPORTING
          iv_entity_name          = iv_entity_name
          iv_entity_set_name      = iv_entity_set_name
          iv_source_name          = iv_source_name
          io_data_provider        = io_data_provider
          it_key_tab              = it_key_tab
          it_navigation_path      = it_navigation_path
          io_expand               = io_expand
          io_tech_request_context = io_tech_request_context
        IMPORTING
          er_deep_entity          = er_deep_entity ).
  ENDCASE.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~CREATE_STREAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IS_MEDIA_RESOURCE              TYPE        TY_S_MEDIA_RESOURCE
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IV_SLUG                        TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_C(optional)
* | [<---] ER_ENTITY                      TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD /iwbep/if_mgw_appl_srv_runtime~create_stream.
  DATA: lt_binary   TYPE TABLE OF x,
        lv_length   TYPE i,
        ls_entity   TYPE zhrt_fi_tv_file,
        lt_acc      TYPE TABLE OF scms_acinf,
        lt_conten   TYPE TABLE OF sdokcntbin,
        lv_name     TYPE saeobjid,
        lv_pernr    TYPE persno,
        lv_arobj    TYPE toaom-ar_object,
        lv_docnu    TYPE nrbel,
        lv_vr       TYPE spkzl,
        lt_p0001    TYPE TABLE OF p0001,
        lv_bukrs    TYPE bukrs,
        lv_doc_type TYPE toadv-doc_type.
  DEFINE m_read_inf.
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = &1
        infty     = &2
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = &3.
  END-OF-DEFINITION.
  CALL FUNCTION 'SCMS_XSTRING_TO_BINARY'
    EXPORTING
      buffer        = is_media_resource-value
    IMPORTING
      output_length = lv_length
    TABLES
      binary_tab    = lt_binary.

  CALL FUNCTION 'SCMS_HTTP_CREATE'
    EXPORTING
      crep_id               = get_repository( )
      comp_id               = 'request'
      mimetype              = CONV w3conttype( is_media_resource-mime_type )
      length                = lv_length
    IMPORTING
      doc_id_out            = ls_entity-file_id
    TABLES
      data                  = lt_binary
    EXCEPTIONS  "TMP
      bad_request           = 1
      unauthorized          = 2
      forbidden             = 3
      conflict              = 4
      internal_server_error = 5
      error_http            = 6
      error_url             = 7
      error_signature       = 8
      error_parameter       = 9
      blocked_by_policy     = 10
      OTHERS                = 11.

  SPLIT iv_slug AT '~' INTO ls_entity-reinr ls_entity-filename ls_entity-type lv_pernr lv_arobj lv_docnu lv_vr.
  m_read_inf lv_pernr '0001' lt_p0001.
  lv_bukrs = VALUE #( lt_p0001[ 1 ]-bukrs OPTIONAL ).

  lv_name = |{ lv_bukrs } { ls_entity-reinr } { lv_pernr } { lv_docnu } { lv_vr }|.
* Тип файла
  IF ls_entity-filename CS '.'.
    DATA(lv_pos) = sy-fdpos + 1.
    lv_doc_type = ls_entity-filename+lv_pos.
    TRANSLATE lv_doc_type TO UPPER CASE.
  ENDIF.
  IF lv_vr IS NOT INITIAL.
    SELECT SINGLE type FROM zhrt_ui_trip_mvr INTO lv_arobj WHERE spkzl = lv_vr.
  ENDIF.
  CALL FUNCTION 'ARCHIV_CONNECTION_INSERT'
    EXPORTING
      archiv_id             = get_repository( )
      arc_doc_id            = CONV toav0-arc_doc_id( ls_entity-file_id ) "archiv_doc_id
      ar_date               = sy-datum
      ar_object             = lv_arobj "'ZF_REQ'
      mandant               = sy-mandt
      object_id             = lv_name
      sap_object            = 'ARCHIVE'
      doc_type              = lv_doc_type "'JPG'
    EXCEPTIONS
      error_connectiontable = 1
      OTHERS                = 2.

  SPLIT iv_slug AT '~' INTO ls_entity-reinr ls_entity-filename ls_entity-type lv_pernr lv_arobj lv_docnu lv_vr.
  MODIFY zhrt_fi_tv_file FROM ls_entity.

  copy_data_to_ref( EXPORTING is_data = ls_entity
                    CHANGING cr_data = er_entity ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~EXECUTE_ACTION
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ACTION_NAME                 TYPE        STRING(optional)
* | [--->] IT_PARAMETER                   TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT(optional)
* | [<---] ER_DATA                        TYPE REF TO DATA
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD /iwbep/if_mgw_appl_srv_runtime~execute_action.
    DATA: lt_header      TYPE /iwbep/t_mgw_name_value_pair,
          lv_message     TYPE string,
          lv_pernr       TYPE persno,
          lv_reinr       TYPE reinr,
          lv_ebeln       TYPE ebeln,
          lv_message_zpl TYPE zhre_ui_trip_zpl_message,
          ls_entity      TYPE zcl_zhr_fi_tv_req_mpc=>ts_handlerreturn..
    lv_message = cl_http_utility=>escape_url( 'tech_err' ).
    APPEND INITIAL LINE TO lt_header ASSIGNING FIELD-SYMBOL(<fs_header>).
    <fs_header>-name  = 'error'.
    <fs_header>-value = lv_message .

    CASE io_tech_request_context->get_function_import_name( ).
      WHEN 'Approve'. "Согласовать заявку
        approve( EXPORTING
                   io_tech_request_context = io_tech_request_context
                 IMPORTING
                   es_data = ls_entity
                   ev_message = DATA(l_message) ).
        IF l_message IS NOT INITIAL.
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              textid                 = /iwbep/cx_mgw_busi_exception=>business_error
              http_header_parameters = lt_header
              message                = CONV #( l_message ).
        ENDIF.
        copy_data_to_ref( EXPORTING is_data = ls_entity
                           CHANGING cr_data = er_data ).
      WHEN 'NotApprove'. "Не согласовать = вернуть на корректировку
        notapprove( EXPORTING
                      io_tech_request_context = io_tech_request_context
                    IMPORTING
                      er_data = er_data ).
      WHEN 'Checks'.
        perform_checks( EXPORTING
                          io_tech_request_context = io_tech_request_context
                        IMPORTING
                          er_data = er_data ).
      WHEN 'SES'.
        check_ses( EXPORTING
                           io_tech_request_context = io_tech_request_context
                         IMPORTING
                           er_data = er_data ).
      WHEN 'VisaSupport'.
        get_visa_dept( EXPORTING
                         io_tech_request_context = io_tech_request_context
                       IMPORTING
                         er_data = er_data ).
      WHEN 'Reserve'.
        change_reserve_status( EXPORTING
                                 io_tech_request_context = io_tech_request_context
                               IMPORTING
                                 er_data = er_data ).
        IF er_data IS INITIAL.
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              textid                 = /iwbep/cx_mgw_busi_exception=>business_error
              http_header_parameters = lt_header
              message                = CONV #( 'У ТН отсутствует УЗ' ).
        ENDIF.
      WHEN 'CalcSum'. "Вычисление суммы с учетом курса валют
        calc_sum( EXPORTING
                    io_tech_request_context = io_tech_request_context
                  IMPORTING
                    er_data = er_data ).
      WHEN 'CalcNDS'. "Вычисление суммы НДС
        calc_nds( EXPORTING
                    io_tech_request_context = io_tech_request_context
                  IMPORTING
                    er_data = er_data ).
      WHEN 'MultipleApprove'. "Согласовать множество заявок
        multipleapprove( EXPORTING
                           io_tech_request_context = io_tech_request_context
                         IMPORTING
                           er_data = er_data ).
      WHEN 'ReCreateZPL'. "Создать ЗПЛ повторно
        DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
        lv_pernr = VALUE #( lt_parameter[ name = 'PERNR' ]-value OPTIONAL ).
        lv_reinr = VALUE #( lt_parameter[ name = 'REINR' ]-value OPTIONAL ).
        create_zpl( EXPORTING
                      iv_pernr = lv_pernr
                      iv_reinr = lv_reinr
                    IMPORTING
                      ev_ebeln = lv_ebeln
                      ev_message = lv_message_zpl ).
        IF lv_ebeln IS INITIAL.
          create_zpl_error( EXPORTING
                              iv_pernr = lv_pernr
                              iv_reinr = lv_reinr
                              iv_message = CONV string( lv_message_zpl ) ).
          RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
            EXPORTING
              textid                 = /iwbep/cx_mgw_busi_exception=>business_error
              http_header_parameters = lt_header
              message                = CONV #( 'Ошибка создания ЗПЛ, подробная информация направлена на электронную почту' ).
        ENDIF.
        ls_entity-reinr = lv_reinr.
        copy_data_to_ref( EXPORTING is_data = ls_entity
                           CHANGING cr_data = er_data ).
      WHEN 'GetVerp'. "PrepaySet только суточные
        get_verp( EXPORTING
                    io_tech_request_context = io_tech_request_context
                  IMPORTING
                    er_data = er_data ).
      WHEN OTHERS.
        super->/iwbep/if_mgw_appl_srv_runtime~execute_action(
            EXPORTING
              iv_action_name          = iv_action_name
              it_parameter            = it_parameter
              io_tech_request_context = io_tech_request_context
            IMPORTING
              er_data                 = er_data ).
    ENDCASE.

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->/IWBEP/IF_MGW_APPL_SRV_RUNTIME~GET_STREAM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING(optional)
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING(optional)
* | [--->] IV_SOURCE_NAME                 TYPE        STRING(optional)
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [<---] ER_STREAM                      TYPE REF TO DATA
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD /iwbep/if_mgw_appl_srv_runtime~get_stream.
*&---------------------------------------------------------------------------------------------*
*& 30.07.2020 Серёгин И.М.
*& HR_ФС IID-1195 Приказ о направлении в командировку
*&---------------------------------------------------------------------------------------------*
*& 22.06.2021 Серёгин И.М.
*& в рамках обращения 5503602396 для приказа ZHR_UI_BOOKING_GUARANTY сделал massn и massg
*&---------------------------------------------------------------------------------------------*

  DATA: lt_binary   TYPE TABLE OF x,
        lv_length   TYPE i,
        lv_mimetype TYPE w3conttype,
        ls_entity   TYPE zhrt_fi_tv_file.

  DATA ls_stream TYPE ty_s_media_resource.
  DATA: l_trans             TYPE zhr_rptpi_rptid,  "string,
        lv_xml_content      TYPE xstring,
        ls_lheader          TYPE ihttpnvp,
        lv_data             TYPE string,
        lv_time             TYPE string,
        _rptpi              TYPE zhrt_rptpi,
        _odata              TYPE REF TO data,
        ls_p0298            TYPE p0298,
        lv_datum0298        TYPE datum,
        "        ls_p0002            TYPE p0002,
        ls_odata_orgeh      TYPE zhr_rptfm_orgeh,
        ls_p0001            TYPE p0001,
        lv_reserv_type      TYPE string,
        lv_modif            TYPE zhrt_rptpi-modif VALUE '',
        lt_user_info        TYPE pernr_us_tab,
        lv_str_reinr        TYPE char255,
        lv_reinr            TYPE zehr_reinr,
        idata               TYPE zhr_parep_idata,
        ls_perio            TYPE ptrv_perio,
        lv_pernr            TYPE pernr_d,
        lv_persa            TYPE persa,
        ls_idata            TYPE zhr_parep_idata,
        ls_data             TYPE zhr_ui_registry_s,
        ls_data_reestr      TYPE zhr_ui_registry_reestr_s,
        ls_frame            TYPE zstv_eksh_framedata,
*        ls_head             TYPE ptrv_head,
        ls_req_head         TYPE ftpt_req_head,
        ls_sdescr           TYPE zhrt_sdescr_t,
*        ls_request          TYPE ftpt_request,
        l_ret               TYPE bapireturn,
        ls_perio_2          TYPE zhrt_ui_trip,
        ls_st               TYPE zhrt_ui_trip_st,
        l_objid             TYPE objektid,
        ret_uname           TYPE uname,
        lt_data_dir         TYPE zhrt_ui_directions,
        ls_data_dir         TYPE zhr_ui_directions_s,
        ls_data_indir       TYPE zhr_ui_indirections_s,
        ls_data_declar      TYPE zhr_ui_declaratory_note_s,
        lv_location_end     TYPE char255,
        lv_monthnum         TYPE i,
        len                 TYPE i,
        lv_mo_name          TYPE char12,
        lv_lidname          TYPE char40,
        ls_lead             TYPE zhr_objbif_objec_leader_s,
        ls_ptrv_head        TYPE ptrv_head,
        ls_back             TYPE zhr_eksh_advrpt_back_s,
        lv_uname            TYPE aenam,
        ls_address          TYPE bapiaddr3,
        ld_company          TYPE bapiuscomp,
        lv_msg              TYPE string,
        lv_fname            TYPE string,
        lv_sname            TYPE string,
        lv_surname          TYPE string,
        lt_return           TYPE STANDARD TABLE OF bapiret2,
        lt_trip             TYPE TABLE OF zhrt_ui_trip,
        it_attrib           TYPE TABLE OF pt1222,
        lt_p0105            TYPE TABLE OF p0105,
        lt_struc            TYPE TABLE OF struc,
        lt_p0001            TYPE TABLE OF p0001,
        lt_p0298            TYPE TABLE OF p0298,
        lt_sdescr           TYPE TABLE OF zhrt_sdescr_t,
        lt_p0002            TYPE TABLE OF p0002,
        lt_reinr_2          TYPE TABLE OF zhrt_ui_trip,
        lt_odata            TYPE TABLE OF zhrt_rptpi,
        lt_ui_trip          TYPE TABLE OF zhrt_ui_trip,
        lt_req_head         TYPE TABLE OF ftpt_req_head,
        gt_data             TYPE TABLE OF zhr_ui_registry_s,
        gt_data_reestr      TYPE TABLE OF zhr_ui_registry_reestr_s,
        lt_reinr            TYPE TABLE OF zehr_reinr,
        lt_data             TYPE TABLE OF zhr_ui_registry,
        lt_head             TYPE TABLE OF ptrv_head,
        lt_request          TYPE TABLE OF ftpt_request,
        lt_req_reason       TYPE TABLE OF ftpt_req_reason,
        lt_ptrv_perio       TYPE TABLE OF ptrv_perio,
        lt_pevsh            TYPE TABLE OF pevsh,
*        lt_eksh_advrpt_back TYPE TABLE OF ztfitv_eksh_advrpt_back,
        lt_eksh_advrpt_back TYPE ztfitv_eksh_advrpt_back,
        _biorgeh            TYPE REF TO zhr_objbif_orgeh,
        _biplans            TYPE REF TO zhr_objbif_plans,
        _bipernr            TYPE REF TO zhr_objbif_pernr,
        lr_ex               TYPE REF TO cx_sy_file_io,
        lr_reinr            TYPE RANGE OF reinr,
        lr_runid            TYPE RANGE OF runid,
        lr_pernr            TYPE RANGE OF pernr_d,
        lr_code             TYPE RANGE OF zhre_btrip_sdescr_code,
        "lr_pernr            TYPE RANGE OF pernr_d,
        ls_code_i           LIKE LINE OF lr_code,
        ls_reinr_i          LIKE LINE OF lr_reinr,
        ls_runid_i          LIKE LINE OF lr_runid,
        ls_pernr_i          LIKE LINE OF lr_pernr.

  FIELD-SYMBOLS: <ref_odata> TYPE data,
                 <ref_trip>  TYPE zhr_trip_request,
                 <ref_syst>  TYPE zhr_rptfm_syst. "syst zhr_rptfm_syst

  DEFINE m_get_objec.
    CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
      EXPORTING
        otype  = &1
        objid  = CONV objektid( &2 )
        datum  = sy-datum
      CHANGING
        result = &3
      EXCEPTIONS
        OTHERS = 4.
  END-OF-DEFINITION.

  CASE io_tech_request_context->get_entity_set_name( ).
    WHEN 'FileSet'.
      DATA(lt_key) = io_tech_request_context->get_keys( ).
      lv_reinr = VALUE #( lt_key[ name = 'REINR' ]-value OPTIONAL ).
      DATA(lv_filename) = VALUE #( lt_key[ name = 'FILENAME' ]-value OPTIONAL ).

      SELECT SINGLE *
        FROM zhrt_fi_tv_file
        INTO @DATA(ls_file)
          WHERE reinr = @lv_reinr
            AND filename = @lv_filename.

      CALL FUNCTION 'SCMS_HTTP_GET'
        EXPORTING
*         MANDT                 = SY-MANDT
          crep_id               = get_repository( )
          doc_id                = ls_file-file_id
          comp_id               = 'request'
*         OFFSET                = 0
*         LENGTH                = -1
*         SIGNATURE             = 'X'
*         ACCESSMODE            = 'r'
*         SECURITY              = ' '
*         BLANKSTOCRLF          = ' '
*         NO_CACHE              = ' '
*         CREPHTTP              =
        IMPORTING
          length                = lv_length
          mimetype              = lv_mimetype
*         CHARSET               =
*         VERSION               =
*         FROM_CACHE            =
*         DOC_PROT              =
        TABLES
          data                  = lt_binary
        EXCEPTIONS "TMP
          bad_request           = 1
          unauthorized          = 2
          not_found             = 3
          conflict              = 4
          internal_server_error = 5
          error_http            = 6
          error_url             = 7
          error_signature       = 8
          OTHERS                = 9.
      IF sy-subrc <> 0.
* Implement suitable error handling here
      ENDIF.

      ls_stream-mime_type = lv_mimetype.

      CALL FUNCTION 'SCMS_BINARY_TO_XSTRING'
        EXPORTING
          input_length = lv_length
*         FIRST_LINE   = 0
*         LAST_LINE    = 0
        IMPORTING
          buffer       = ls_stream-value
        TABLES
          binary_tab   = lt_binary
        EXCEPTIONS
          failed       = 1
          OTHERS       = 2.

      copy_data_to_ref( EXPORTING is_data = ls_stream
                        CHANGING cr_data = er_stream ).
*{30.07.2020 Серёгин И.М.
    WHEN 'LoadOrder'.

      lt_key = io_tech_request_context->get_keys( ).
      lv_reinr = VALUE #( lt_key[ name = 'REINR' ]-value OPTIONAL ).
      lv_filename = VALUE #( lt_key[ name = 'FILENAME' ]-value OPTIONAL ).
      lv_pernr = VALUE #( lt_key[ name = 'PERNR' ]-value OPTIONAL ).

      SELECT SINGLE * FROM ptrv_perio INTO ls_perio
                                  WHERE pernr = lv_pernr AND reinr = lv_reinr.
      IF sy-subrc <> 0.
        EXIT.
      ENDIF.

      idata-pernr = lv_pernr.
      idata-tclas = 'A'.
      idata-begda = ls_perio-pdatv.

      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          tclas     = 'A'
          pernr     = lv_pernr
          infty     = '0298'
        TABLES
          infty_tab = lt_p0298
        EXCEPTIONS
          OTHERS    = 1.

      CHECK sy-subrc EQ 0.
      SORT lt_p0298 BY begda DESCENDING.
      CLEAR ls_p0298.

*      LOOP AT lt_p0298 ASSIGNING FIELD-SYMBOL(<r_p0298>) WHERE begda EQ ls_perio-pdatv AND massn = 'ZQ'.
      LOOP AT lt_p0298 ASSIGNING FIELD-SYMBOL(<r_p0298>) WHERE reinr EQ ls_perio-reinr AND massn = 'ZQ'.
*        ls_perio-pdatv = ls_p0298-begda.
*        idata-massn = ls_p0298-massn.
*        idata-massg = ls_p0298-massg.
        idata-begda = ls_perio-pdatv = <r_p0298>-begda.
        idata-massn = <r_p0298>-massn.
        idata-massg = <r_p0298>-massg.
      ENDLOOP.

      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = lv_pernr
          infty     = '0001'
          begda     = sy-datum
          endda     = sy-datum
        TABLES
          infty_tab = lt_p0001
        EXCEPTIONS
          OTHERS    = 1.
      IF lt_p0001 IS NOT INITIAL.
        lv_persa = lt_p0001[ 1 ]-werks.
      ENDIF.
      CALL FUNCTION 'ZHR_RPTPI_PROCESS'
        EXPORTING
          rptid            = 'ORDER_T9' "'ORDER_CANCEL_TRIP'
          modif            = 'S'
          persa            = lv_persa
          datum            = ls_perio-pdatv
          idata            = idata
        IMPORTING
          rptpi            = _rptpi
          odata            = _odata
        EXCEPTIONS
          rptid_not_found  = 1
          invalid_settings = 2
          rptfm_error      = 3
          OTHERS           = 4.

      CHECK _odata IS NOT INITIAL.
      "нужно в приказ вывести имя того кто создал заявку по этому влазею в _odata и заменяю значения который получил из фм BAPI_USER_GET_DETAIL по uname

*      TRY.
*
*          ASSIGN _odata->* TO <ref_odata>.
*          ASSIGN COMPONENT 'SYST' OF STRUCTURE <ref_odata> TO <ref_syst>.
*          IF <ref_syst> IS ASSIGNED.
*            SELECT SINGLE uname FROM ptrv_head INTO lv_uname "#EC ENHOK
*                            WHERE pernr = lv_pernr
*                            AND   reinr = lv_reinr.
*
*            CALL FUNCTION 'BAPI_USER_GET_DETAIL'
*              EXPORTING
*                username = lv_uname
*              IMPORTING
*                address  = ls_address
*                company  = ld_company
*              TABLES
*                return   = lt_return.
*
*
*            SPLIT ls_address-fullname AT ' ' INTO lv_fname lv_sname lv_surname.
*            <ref_syst>-usfio_short = |{ lv_surname } { lv_fname+0(1) }.{ lv_surname+0(1) }.|.
*            <ref_syst>-nomer_tel = ls_address-tel1_numbr.
*            <ref_syst>-ip_tel = ls_address-tel1_ext.
*
*            UNASSIGN <ref_syst>.
*          ENDIF.
*        CATCH cx_sy_file_io INTO lr_ex.
*          lv_msg = lr_ex->get_text( ).
*          MESSAGE lv_msg TYPE 'I'.
*      ENDTRY.


      l_trans = 'ZHR_ORDER_T9_EKSH'.
      CLEAR: lv_xml_content.
      CALL TRANSFORMATION (l_trans)
      SOURCE
      struct = _odata"ls_odata
      RESULT XML lv_xml_content.
      ls_stream-value = lv_xml_content.
      ls_stream-mime_type = 'application/msword'."lv_mimetype.
      lv_data = |{ sy-datum+6(2) }.{ sy-datum+4(2) }.{ sy-datum(4) }|.
      lv_time = |{ sy-uzeit(2) }:{ sy-uzeit+2(2) }:{ sy-uzeit+4(2) }|.
      lv_filename = escape( val = lv_filename format = cl_abap_format=>e_url ).
      ls_lheader-name = 'Content-Disposition'.
      ls_lheader-value = 'outline; filename="'.

      ls_lheader-value = 'attachment; filename="' && 'ZHR_ORDER_T9_' && lv_pernr && '_' && lv_reinr && '.doc"'.
*      ls_lheader-value = |outline; filename="ses.doc"|.
      set_header( is_header = ls_lheader ).
      copy_data_to_ref( EXPORTING is_data = ls_stream
                        CHANGING cr_data = er_stream ).
*}30.07.2020 Серёгин И.М.

*{21.08.2020 Тациев С.Е.
    WHEN 'LoadBookingSet'.

      lt_key = io_tech_request_context->get_keys( ).
      lv_pernr = VALUE #( lt_key[ name = 'PERNR' ]-value OPTIONAL ).
      lv_reinr = VALUE #( lt_key[ name = 'REINR' ]-value OPTIONAL ).
      lv_reserv_type = VALUE #( lt_key[ name = 'TYPE' ]-value OPTIONAL ).

      SELECT DISTINCT ftpt_request~request_type
        FROM ftpt_request
        INTO TABLE @DATA(lt_request_types)
        WHERE ftpt_request~reinr = @lv_reinr
          AND ftpt_request~pernr = @lv_pernr.

      CASE lv_reserv_type.
        WHEN 'Aeroflot'.
          l_trans = 'ZHR_UI_BOOKING_AEROFLOT'.
        WHEN 'Siberia'.
          l_trans = 'ZHR_UI_BOOKING_SIBERIA'.
        WHEN 'Hotel'.
          l_trans = 'ZHR_UI_BOOKING'.
        WHEN 'GUARANTY'.
          l_trans = 'ZHR_UI_BOOKING_GUARANTY'.
        WHEN 'REPORT_TRIP'.
          l_trans = 'ZHR_REPORT_TRIP'.
        WHEN 'ORDER_CANCEL_TRIP'.
          l_trans = 'ORDER_CANCEL_TRIP'.
        WHEN 'ORDER_TRANSFER_TRIP'.
          l_trans = 'ORDER_TRANSFER_TRIP'.
        WHEN 'NOTE_SECONDMENT'.
          l_trans = 'ZHR_NOTE_SECONDMENT'.
          IF lv_pernr IS INITIAL.
            CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
              EXPORTING
                user   = sy-uname
                begda  = sy-datum
                endda  = sy-datum
*               IV_WITH_AUTHORITY       = 'X'
              TABLES
                ee_tab = lt_user_info.
            lv_pernr = lt_user_info[ 1 ]-pernr.
          ENDIF.
        WHEN 'PRICE_SECONDMENT'.
          l_trans = 'ZHR_PRICE_SECONDMENT'.
          IF lv_pernr IS INITIAL.
            CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
              EXPORTING
                user   = sy-uname
                begda  = sy-datum
                endda  = sy-datum
*               IV_WITH_AUTHORITY       = 'X'
              TABLES
                ee_tab = lt_user_info.
            lv_pernr = lt_user_info[ 1 ]-pernr.
          ENDIF.
        WHEN 'ADVANCE_REPORT_BACK'.
          l_trans = 'ZHR_ADVANCE_REPORT_BACK'.
      ENDCASE.

      SELECT SINGLE * FROM ptrv_perio INTO ls_perio
                                  WHERE pernr = lv_pernr AND reinr = lv_reinr.

      IF l_trans EQ 'ZHR_ADVANCE_REPORT_BACK'.
        DATA: lv_test TYPE bapiret2_t.
        CALL FUNCTION 'Z_FITV_ADVANCE_REPORT_BACK'
          EXPORTING
            employeenumber = CONV pernr_d( lv_pernr )
            tripnumber     = CONV reinr( lv_reinr )
          TABLES
            report_data    = lt_eksh_advrpt_back
            return         = lv_test.

        SELECT SINGLE * FROM ptrv_head INTO ls_ptrv_head    "#EC ENHOK
                  WHERE pernr = lv_pernr
                  AND   reinr = lv_reinr.

        MOVE-CORRESPONDING lt_eksh_advrpt_back TO ls_back-back.
        "считываю ename из 0001 ит и добавялю в результирующую структуру
        CLEAR lt_p0001.
        CLEAR ls_p0001.
        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
        CALL FUNCTION 'HR_READ_INFOTYPE'
          EXPORTING
            tclas     = 'A'
            pernr     = ls_ptrv_head-pernr
            infty     = '0001'
            begda     = ls_ptrv_head-datv1
          TABLES
            infty_tab = lt_p0001
          EXCEPTIONS
            OTHERS    = 1.

        READ TABLE lt_p0001 INDEX 1 INTO ls_p0001.

        ls_back-ename = ls_p0001-ename.

        CHECK sy-subrc EQ 0.

        CLEAR: lv_xml_content.

        CALL TRANSFORMATION (l_trans)
        SOURCE
        struct = ls_back
        RESULT XML lv_xml_content.
        ls_stream-value = lv_xml_content.
        ls_stream-mime_type = 'application/msword'."lv_mimetype.
        ls_lheader-name = 'Content-Disposition'.
        ls_lheader-value = 'attachment; filename="' && l_trans && '_' && lv_pernr && '_' && lv_reinr && '.doc"'.
*      ls_lheader-value = 'attachment; filename="' && lv_pernr && '_' && lv_reinr && '_' && lv_reserv_type && '.doc"'.
        set_header( is_header = ls_lheader ).
        copy_data_to_ref( EXPORTING is_data = ls_stream
                  CHANGING cr_data = er_stream ).
      ELSE.
        "Для этих 2 приказов нужно брать дату прям из комадировки
        lv_datum0298 =  COND #( WHEN l_trans  EQ 'ORDER_CANCEL_TRIP' OR
                                     l_trans  EQ 'ORDER_TRANSFER_TRIP' OR
                                     l_trans  EQ 'ZHR_REPORT_TRIP' THEN ls_perio-pdatv
                                WHEN l_trans  EQ 'ZHR_UI_BOOKING_GUARANTY' THEN hr_low_date
                                     ELSE sy-datum ).

        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
        CALL FUNCTION 'HR_READ_INFOTYPE'
          EXPORTING
            tclas     = 'A'
            pernr     = lv_pernr
            infty     = '0298'
            begda     = lv_datum0298
            endda     = '99991231'
          TABLES
            infty_tab = lt_p0298
          EXCEPTIONS
            OTHERS    = 1.

        CHECK sy-subrc EQ 0.

        IF l_trans EQ 'ZHR_UI_BOOKING_GUARANTY'.
          CLEAR ls_p0298.
          DELETE lt_p0298 WHERE subty <> ''." ins 22.06.2021 Серёгин И.М.
          "DELETE lt_p0298 WHERE reinr <> lv_reinr.
          SORT lt_p0298 BY begda DESCENDING.
          READ TABLE lt_p0298 INDEX 1 INTO ls_p0298.
          ls_perio-pdatv = ls_p0298-begda.
          idata-massn = ls_p0298-massn. "com 22.06.2021 Серёгин И.М.
          idata-massg = ls_p0298-massg. "com 22.06.2021 Серёгин И.М.
          "idata-massn = ''.
          "idata-massg = ''.
        ELSEIF l_trans EQ 'ORDER_CANCEL_TRIP' OR l_trans EQ 'ORDER_TRANSFER_TRIP'.

          DATA(lv_massn) = COND #( WHEN l_trans EQ 'ORDER_CANCEL_TRIP' THEN 'YH'
                                   WHEN l_trans  EQ 'ORDER_TRANSFER_TRIP' THEN 'Y6').
          SORT lt_p0298 BY begda DESCENDING.
          CLEAR ls_p0298.
          " прочитать приказ на дату комадировки.
          READ TABLE lt_p0298 WITH KEY massn = lv_massn begda = ls_perio-pdatv INTO ls_p0298.
          ls_perio-pdatv = ls_p0298-begda.
          idata-massn = ls_p0298-massn.
          idata-massg = ls_p0298-massg.
        ELSEIF  l_trans EQ  'ZHR_REPORT_TRIP'.
          DELETE lt_p0298 WHERE reinr <> lv_reinr.
          SORT lt_p0298 BY begda ASCENDING.
          DATA(lv_count_298) = lines( lt_p0298 ).
          CLEAR ls_p0298.

          "READ TABLE lt_p0298 WITH KEY reinr = ls_perio-reinr INTO ls_p0298.
          READ TABLE lt_p0298 INDEX lv_count_298 INTO ls_p0298.
          CHECK sy-subrc EQ 0.
          ls_perio-pdatv = ls_p0298-begda.
          idata-massn = ls_p0298-massn.
          idata-massg = ls_p0298-massg.
        ELSEIF  sy-subrc <> 0.
          EXIT.
        ENDIF.

        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
        CALL FUNCTION 'HR_READ_INFOTYPE'
          EXPORTING
            pernr     = lv_pernr
            infty     = '0001'
            begda     = sy-datum
            endda     = sy-datum
          TABLES
            infty_tab = lt_p0001
          EXCEPTIONS
            OTHERS    = 1.
        IF lt_p0001 IS NOT INITIAL.
          lv_persa = lt_p0001[ 1 ]-werks.
        ENDIF.
        idata-pernr = lv_pernr.


        idata-tclas = 'A'.
        idata-begda = ls_perio-pdatv. " ls_perio-pdatv. sy-datum
        lv_modif = 'S'.

        EXPORT reinr = lv_reinr TO MEMORY ID 'ZHR_TRIP_REINR'.

        CALL FUNCTION 'ZHR_RPTPI_PROCESS'
          EXPORTING
            rptid            = l_trans  "'ZHR_UI_BOOKING_AEROFLOT' "'ORDER_CANCEL_TRIP'
            modif            = lv_modif
            persa            = lv_persa   "'1000'
            datum            = ls_perio-pdatv     "ls_perio-pdatv sy-datum
            idata            = idata
          IMPORTING
*           rptpi            = _rptpi
            odata            = _odata
          EXCEPTIONS
            rptid_not_found  = 1
            invalid_settings = 2
            rptfm_error      = 3
            OTHERS           = 4.

        CHECK _odata IS NOT INITIAL.
        "В приказе CANCEL_TRIP и TRANSFER_TRIP нужно вывести имя того кто создал заявку по этому влазею в _odata и заменяю значения который получил из фм BAPI_USER_GET_DETAIL по uname
*        IF l_trans EQ 'ORDER_CANCEL_TRIP' OR l_trans EQ 'ORDER_TRANSFER_TRIP' OR l_trans EQ 'ZHR_NOTE_SECONDMENT'.
*          TRY.
*
*              ASSIGN _odata->* TO <ref_odata>.
*              ASSIGN COMPONENT 'SYST' OF STRUCTURE <ref_odata> TO <ref_syst>.
*              IF <ref_syst> IS ASSIGNED.
*                SELECT SINGLE uname FROM ptrv_head INTO lv_uname "#EC ENHOK
*                                WHERE pernr = lv_pernr
*                                AND   reinr = lv_reinr.
*
*                CALL FUNCTION 'BAPI_USER_GET_DETAIL'
*                  EXPORTING
*                    username = lv_uname
*                  IMPORTING
*                    address  = ls_address
*                    company  = ld_company
*                  TABLES
*                    return   = lt_return.
*
*
*                SPLIT ls_address-fullname AT ' ' INTO lv_fname lv_sname lv_surname.
*                <ref_syst>-usfio_short = |{ lv_surname } { lv_fname+0(1) }.{ lv_surname+0(1) }.|.
*                <ref_syst>-nomer_tel = ls_address-tel1_numbr.
*                <ref_syst>-ip_tel = ls_address-tel1_ext.
*                UNASSIGN <ref_syst>.
*              ENDIF.
*
*              IF l_trans EQ 'ZHR_NOTE_SECONDMENT'.
*                ASSIGN COMPONENT 'TRIP' OF STRUCTURE <ref_odata> TO <ref_trip>.
*                IF <ref_trip> IS ASSIGNED.
*                  <ref_trip>-directive_comment = COND #( WHEN <ref_trip>-directive_comment IS INITIAL THEN 'Директивы главного исполнительного директора отсутствуют' ELSE <ref_trip>-directive_comment ).
*                ENDIF.
*              ENDIF.
*
*            CATCH cx_sy_file_io INTO lr_ex.
*              lv_msg = lr_ex->get_text( ).
*              MESSAGE lv_msg TYPE 'I'.
*          ENDTRY.
*        ENDIF.

        CLEAR: lv_xml_content.
        l_trans = COND #( WHEN l_trans  EQ 'ORDER_CANCEL_TRIP' THEN 'ZHR_ORDER_T9_CANCEL' WHEN l_trans EQ 'ORDER_TRANSFER_TRIP' THEN 'ZHR_ORDER_TRANSFER_TRIP' ELSE l_trans ).
        CALL TRANSFORMATION (l_trans)
        SOURCE
        struct = _odata"ls_odata
        RESULT XML lv_xml_content.
        ls_stream-value = lv_xml_content.
        ls_stream-mime_type = 'application/msword'."lv_mimetype.
        ls_lheader-name = 'Content-Disposition'.
        ls_lheader-value = 'attachment; filename="' && l_trans && '_' && lv_pernr && '_' && lv_reinr && '.doc"'.
*      ls_lheader-value = 'attachment; filename="' && lv_pernr && '_' && lv_reinr && '_' && lv_reserv_type && '.doc"'.
        set_header( is_header = ls_lheader ).

        copy_data_to_ref( EXPORTING is_data = ls_stream
                          CHANGING cr_data = er_stream ).
      ENDIF.

*
*

    WHEN 'ReestrNoteSet'.
      DATA: _signy         TYPE zhr_rptfm_signy,
            _signyd        TYPE zhr_rptfm_signy,
            lt_signt       TYPE TABLE OF zhr_rptfm_signy,
            ls_data_note   TYPE zhr_ui_reestr_note_s,
            ls_odata_plans TYPE zhr_rptfm_plans,
            gt_data_note   TYPE zhr_ui_reestr_note_s.
      "gt_data_note   TYPE TABLE OF zhr_ui_reestr_note_s.
      "FIELD-SYMBOLS <line> LIKE LINE OF gt_data_note.



      lt_key = io_tech_request_context->get_keys( ).
      lv_str_reinr = VALUE #( lt_key[ name = 'REINR' ]-value OPTIONAL ).
      lv_pernr = VALUE #( lt_key[ name = 'PERNR' ]-value OPTIONAL )."тн человека который зашёл в лкр.

      "собираю шапку документа, данные человка который зашёл в лкр
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = lv_pernr
          infty     = '0001'
          begda     = sy-datum
          endda     = sy-datum
        TABLES
          infty_tab = lt_p0001
        EXCEPTIONS
          OTHERS    = 1.
      IF lt_p0001 IS NOT INITIAL.
        lv_persa = lt_p0001[ 1 ]-werks.
      ENDIF.

      CALL FUNCTION 'ZHR_RPTFM_SIGNY_RPTID'
        EXPORTING
          persa         = lv_persa
          rptid         = 'ZHR_UI_REESTR_NOTE'
          datum         = sy-datum
          param         = 'PRI_MODE=NS,EX1_MODE=NS' "PADEG-D'
        IMPORTING
          odata         = _signy
        EXCEPTIONS
          "wrong_parameters = 1
          nothing_found = 2
          OTHERS        = 3.

      CALL FUNCTION 'ZHR_RPTFM_SIGNY_RPTID'
        EXPORTING
          persa         = lv_persa
          rptid         = 'ZHR_UI_REESTR_NOTE'
          datum         = sy-datum
          param         = 'PRI_MODE=NS,PRI_PADEG=D' "PADEG-D'
        IMPORTING
          odata         = _signyd
        EXCEPTIONS
          "wrong_parameters = 1
          nothing_found = 2
          OTHERS        = 3.

      "записываю подписантов в общую структуру
      MOVE-CORRESPONDING _signy TO gt_data_note-signy.
      MOVE-CORRESPONDING _signyd TO gt_data_note-signyd.

      "разбиваю номера командировок собираю ренжи
      SPLIT lv_str_reinr AT ',' INTO TABLE lt_reinr.
      ls_reinr_i = VALUE #( sign = 'I'  option = 'EQ' ).
      LOOP AT lt_reinr ASSIGNING FIELD-SYMBOL(<req>).
        ls_reinr_i-low = <req>.
        APPEND ls_reinr_i TO lr_reinr.
      ENDLOOP.

      SELECT * FROM zhrt_ui_trip INTO CORRESPONDING FIELDS OF TABLE lt_ui_trip
                                          WHERE reinr IN lr_reinr.

      CHECK sy-subrc EQ 0.

      "собираю ренжи табельных из заявок
      ls_pernr_i = VALUE #( sign = 'I'  option = 'EQ' ).
      LOOP AT lt_ui_trip ASSIGNING FIELD-SYMBOL(<r_ui_trip>) .
        ls_pernr_i-low = <r_ui_trip>-pernr.
        APPEND ls_pernr_i TO lr_pernr.
      ENDLOOP.

      "собираю реестр комадировок
      SELECT * FROM ftpt_req_head INTO TABLE lt_req_head
                WHERE pernr IN lr_pernr
                AND   reinr IN lr_reinr
                AND   plan_request = 'R'.

      CHECK sy-subrc EQ 0.

      ls_code_i = VALUE #( sign = 'I' option = 'EQ' ).
      LOOP AT lt_req_head ASSIGNING FIELD-SYMBOL(<r_req_head>).
        ls_code_i-low = <r_req_head>-zzsdescr_code.
        APPEND ls_code_i TO lr_code.
      ENDLOOP.

      "читаю Справочник кратких целей командировки
*      SELECT * FROM zhrt_sdescr_t INTO TABLE lt_sdescr
*                WHERE code IN lr_code.
*
*      CHECK sy-subrc EQ 0.

      SELECT * FROM ftpt_request INTO  TABLE lt_request
           WHERE pernr IN lr_pernr
           AND   reinr IN lr_reinr
           AND   plan_request EQ 'R'
           AND   request_type EQ ''.

      CHECK sy-subrc EQ 0.

      SELECT * FROM ftpt_req_reason INTO  TABLE lt_req_reason
         WHERE pernr IN lr_pernr
         AND   reinr IN lr_reinr
         AND   plan_request EQ 'R'.

      CHECK sy-subrc EQ 0.


      gt_data_note-data = sy-datum.

      READ TABLE lt_req_head INDEX 1 INTO ls_req_head.
      gt_data_note-status = COND #( WHEN ls_req_head-date_beg LT sy-datum THEN 'состоявшихся' ELSE 'планируемых' ).
      gt_data_note-location = COND #( WHEN ls_req_head-country_end EQ 'RU' THEN 'в пределах Российской Федерации' ELSE 'за пределами Российской Федерации ' ).

      " APPEND INITIAL LINE TO gt_data_note ASSIGNING <line>.
      "<line>-signy = _signy.
      "собираю данные по комадировкам которые выбрали для вывода в документ
      LOOP AT lt_req_head ASSIGNING <r_req_head>.
        CLEAR lt_p0001[].
        CLEAR ls_data.
        CLEAR lt_p0002.
        "        CLEAR ls_p0002.
        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.

        CALL FUNCTION 'HR_READ_INFOTYPE'
          EXPORTING
            pernr     = <r_req_head>-pernr
            infty     = '0001'
            begda     = CONV begda( <r_req_head>-date_beg )
          TABLES
            infty_tab = lt_p0001
          EXCEPTIONS
            OTHERS    = 1.

        READ TABLE lt_p0001 INDEX 1 INTO ls_p0001.
        l_objid = VALUE #( lt_p0001[ 1 ]-orgeh ).
        "поиск топа для человека чью комадировку выводят в реестр
        CLEAR: lt_struc[].
        CALL FUNCTION 'RH_STRUC_GET'
          EXPORTING
            act_otype       = c_otype_o
            act_objid       = l_objid
            act_wegid       = c_wegid_up
            act_begda       = sy-datum
            act_endda       = sy-datum
            authority_check = ''
          TABLES
            result_struc    = lt_struc
          EXCEPTIONS
            no_plvar_found  = 1
            no_entry_found  = 2
            OTHERS          = 3.

        LOOP AT lt_struc ASSIGNING FIELD-SYMBOL(<struc>).
          CLEAR: _biorgeh, ls_lead.
          m_get_objec c_otype_o <struc>-objid _biorgeh.
          CHECK _biorgeh IS NOT INITIAL.
          _biorgeh->get_leader(
           EXPORTING
             adatum = sy-datum
           IMPORTING
             result = ls_lead
                  ).

          CLEAR: it_attrib[].

          CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
          CALL FUNCTION 'RH_OM_ATTRIBUTES_READ'
            EXPORTING
              plvar            = '01'
              otype            = 'S'
              objid            = ls_lead-plans
              seldate          = sy-datum
            TABLES
              attrib           = it_attrib
            EXCEPTIONS
              no_active_plvar  = 1
              no_attributes    = 2
              no_values        = 3
              object_not_found = 4
              OTHERS           = 5.
          READ TABLE it_attrib ASSIGNING FIELD-SYMBOL(<attr>) WITH KEY attrib = 'ZTOPMGR'.
          CHECK sy-subrc EQ 0.

          CLEAR: _bipernr, _biplans.

          CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
            EXPORTING
              otype            = 'P'
              objid            = ls_lead-pernr
              datum            = sy-datum "ls_perio-pdatv
            CHANGING
              result           = _bipernr
            EXCEPTIONS
              invalid_otype    = 1
              invalid_casting  = 2
              object_not_found = 3
              OTHERS           = 4.

          ls_data_reestr-lidname = _bipernr->get_name( anoauth = abap_true adatum = sy-datum ).
          SPLIT ls_data_reestr-lidname AT ' ' INTO DATA(lv_nachn) DATA(lv_vorna) DATA(lv_midnm).
          ls_data_reestr-lidname = |{ lv_vorna+0(1) }.{ lv_midnm+0(1) }. { lv_nachn }|.

          _bipernr->get_orgass(
           IMPORTING
            resplans = _biplans ).

          IF _biplans IS NOT INITIAL.
            ls_data_reestr-lidpos = _biplans->get_name( adatum = sy-datum ).
            EXIT.
          ENDIF.

        ENDLOOP.


        MOVE-CORRESPONDING ls_p0001 TO ls_data_reestr-l0001.

        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
        CALL FUNCTION 'HR_READ_INFOTYPE'
          EXPORTING
            pernr     = <r_req_head>-pernr
            infty     = '0002'
            begda     = sy-datum
          TABLES
            infty_tab = lt_p0002
          EXCEPTIONS
            OTHERS    = 1.

        SORT lt_p0002 BY begda DESCENDING.
        READ TABLE lt_p0002 INDEX 1 INTO ls_data_reestr-l0002.
        TRANSLATE ls_data-l0002-nachn TO UPPER CASE.

        READ TABLE lt_req_head WITH KEY pernr = <r_req_head>-pernr reinr = <r_req_head>-reinr INTO ls_data_reestr-ftpt_req_head.
        SPLIT ls_data_reestr-ftpt_req_head-location_end AT ' ' INTO DATA(lv_city_name) DATA(lv_city_type).
        ls_data_reestr-ftpt_req_head-location_end = |{ lv_city_type } { lv_city_name }|.

*        READ TABLE lt_sdescr WITH KEY code = <r_req_head>-zzsdescr_code INTO ls_data_reestr-sdescr.
*        TRANSLATE ls_data_reestr-sdescr-sdescr+0(1) TO LOWER CASE.
        LOOP AT lt_req_reason ASSIGNING FIELD-SYMBOL(<r_reason>) WHERE pernr = <r_req_head>-pernr AND reinr = <r_req_head>-reinr.
          ls_data_reestr-text = |{ ls_data_reestr-text } { <r_reason>-text }|."<r_reason>-text
        ENDLOOP.

        "нужно из lt_request переложить по условию строки в тб ls_data_reestr-ftpt_request
        LOOP AT lt_request ASSIGNING FIELD-SYMBOL(<r_request>) WHERE pernr = <r_req_head>-pernr AND reinr = <r_req_head>-reinr.
          APPEND <r_request> TO ls_data_reestr-ftpt_request.
        ENDLOOP.

        "READ TABLE lt_request WITH KEY pernr = <r_req_head>-pernr reinr = <r_req_head>-reinr INTO ls_data_reestr-ftpt_request.

        CLEAR ls_idata.
        ls_idata-pernr = <r_req_head>-pernr.
        ls_idata-begda = <r_req_head>-date_beg.

        CALL FUNCTION 'ZHR_RPTFM_ORGEH'
          EXPORTING
            persa            = ls_p0001-werks
            idata            = ls_idata
            param            = 'LVGMASK=BCDE,DIRECT=U,PADEG=R' "'MODE=M,PADEG=R'
          IMPORTING
            odata            = ls_odata_orgeh
          EXCEPTIONS
            wrong_parameters = 1
            nothing_found    = 2
            OTHERS           = 3.

        IF ls_odata_orgeh IS NOT INITIAL.
          MOVE-CORRESPONDING ls_odata_orgeh TO ls_data_reestr-orgeh.
        ENDIF.

        CALL FUNCTION 'ZHR_RPTFM_PLANS'
          EXPORTING
            persa            = ls_p0001-werks
            idata            = ls_idata
            param            = ''
          IMPORTING
            odata            = ls_odata_plans
          EXCEPTIONS
            wrong_parameters = 1
            nothing_found    = 2
            OTHERS           = 3.

        IF ls_odata_plans IS NOT INITIAL.
          TRANSLATE ls_odata_plans-sname TO LOWER CASE.
          MOVE-CORRESPONDING ls_odata_plans TO ls_data_reestr-plans_rn.
        ENDIF.
        "всё что насобирал в лк структуру закидываю в лк ТБ в поле t_reestr_note
        APPEND ls_data_reestr TO gt_data_note-t_reestr_note.
        CLEAR ls_data_reestr.
*        APPEND INITIAL LINE TO gt_data_note ASSIGNING <line>.
*        APPEND ls_data TO <line>-t_reestr_note.
*        <line>-signy = _signy.

      ENDLOOP.
      SORT gt_data_note-t_reestr_note BY ftpt_req_head-date_beg ASCENDING.
**********************
      CLEAR: lv_nachn, lv_vorna, lv_midnm.
      "в поле pernr_fname находится ФИО, а надо только ИО, поэтому разбиваю поле и обратно склеиваю без него
      SPLIT gt_data_note-signy-pri-pernr_fname AT ' ' INTO lv_nachn lv_vorna lv_midnm.
      gt_data_note-signy-pri-pernr_fname = |{ lv_vorna } { lv_midnm }|.
**********************
      l_trans = 'ZHR_UI_REESTR_NOTE'.
      CLEAR: lv_xml_content.
      CALL TRANSFORMATION (l_trans)
      SOURCE
      table = gt_data_note"ls_odata
      RESULT XML lv_xml_content.
      ls_stream-value = lv_xml_content.
      ls_stream-mime_type = 'application/msword'."lv_mimetype.
      lv_data = |{ sy-datum+6(2) }.{ sy-datum+4(2) }.{ sy-datum(4) }|.
      lv_time = |{ sy-uzeit(2) }:{ sy-uzeit+2(2) }:{ sy-uzeit+4(2) }|.
      lv_filename = escape( val = lv_filename format = cl_abap_format=>e_url ).
      ls_lheader-name = 'Content-Disposition'.
      ls_lheader-value = 'outline; filename="'.

      ls_lheader-value = 'attachment; filename="' && 'ZHR_UI_REESTR_NOTE' && '.doc"'.
*      ls_lheader-value = |outline; filename="ses.doc"|.
      set_header( is_header = ls_lheader ).
      copy_data_to_ref( EXPORTING is_data = ls_stream
                        CHANGING cr_data = er_stream ).

    WHEN 'DecNoteSet'.

      lt_key = io_tech_request_context->get_keys( ).
      lv_str_reinr = VALUE #( lt_key[ name = 'REINR' ]-value OPTIONAL ).

      "разбиваю номера командировок собираю ренжи
      SPLIT lv_str_reinr AT ',' INTO TABLE lt_reinr.
      ls_data_declar-count_note =  lines( lt_reinr ).

      CALL FUNCTION 'ZHR_NUMERAL_WORD'
        EXPORTING
          p_num   = CONV i( ls_data_declar-count_note )
          p_word0 = 'служебных записок'
          p_word1 = 'служебная записка'
          p_word2 = 'служебных записок'
        IMPORTING
          word    = ls_data_declar-text_count.

      ls_reinr_i = VALUE #( sign = 'I'  option = 'EQ' ).
      LOOP AT lt_reinr ASSIGNING <req>.
        ls_reinr_i-low = <req>.
        APPEND ls_reinr_i TO lr_reinr.
      ENDLOOP.

      SELECT * FROM zhrt_ui_trip INTO CORRESPONDING FIELDS OF TABLE lt_ui_trip
                                          WHERE reinr IN lr_reinr.

      CHECK sy-subrc EQ 0.

      "собираю ренжи табельных из заявок
      ls_pernr_i = VALUE #( sign = 'I'  option = 'EQ' ).
      LOOP AT lt_ui_trip ASSIGNING <r_ui_trip> .
        ls_pernr_i-low = <r_ui_trip>-pernr.
        APPEND ls_pernr_i TO lr_pernr.
      ENDLOOP.

      "собираю реестр комадировок
      SELECT * FROM ftpt_req_head INTO TABLE lt_req_head
                WHERE pernr IN lr_pernr
                AND   reinr IN lr_reinr
                AND   plan_request = 'R'.

      CHECK sy-subrc EQ 0.

      DATA:  txt_month(40).
      lv_monthnum = sy-datum+4(2).
      CALL FUNCTION 'ZIP_MONTH_NAME'
        EXPORTING
          month_number = lv_monthnum
          padej        = 'Р'
        IMPORTING
          month_name   = txt_month.

      ls_data_declar-datym = |{ sy-datum+6(2) } { txt_month } { sy-datum(4) }|.
      CLEAR txt_month.

      READ TABLE lt_req_head INDEX 1 INTO ls_req_head.
      ls_data_declar-location = COND #( WHEN ls_req_head-country_end EQ 'RU' THEN 'в пределах Российской Федерации' ELSE 'за пределами Российской Федерации ' ).

      SELECT * FROM ftpt_request INTO  TABLE lt_request
                     WHERE pernr IN lr_pernr
                     AND   reinr IN lr_reinr
                     AND   plan_request EQ 'R'
                     AND   request_type EQ ''.

      CHECK sy-subrc EQ 0.

      SELECT * FROM ftpt_req_reason INTO  TABLE lt_req_reason
               WHERE pernr IN lr_pernr
               AND   reinr IN lr_reinr
               AND   plan_request EQ 'R'.

      CHECK sy-subrc EQ 0.

      LOOP AT lt_req_head ASSIGNING <r_req_head>.
        CLEAR lt_p0001[].
        CLEAR ls_data.
        CLEAR lt_p0002.
        "        CLEAR ls_p0002.
        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.

        CALL FUNCTION 'HR_READ_INFOTYPE'
          EXPORTING
            pernr     = <r_req_head>-pernr
            infty     = '0001'
            begda     = CONV begda( <r_req_head>-date_beg )
          TABLES
            infty_tab = lt_p0001
          EXCEPTIONS
            OTHERS    = 1.

        READ TABLE lt_p0001 INDEX 1 INTO ls_p0001.
        l_objid = VALUE #( lt_p0001[ 1 ]-orgeh ).
        "поиск топа для человека чью комадировку выводят в реестр
        CLEAR: lt_struc[].
        CALL FUNCTION 'RH_STRUC_GET'
          EXPORTING
            act_otype       = c_otype_o
            act_objid       = l_objid
            act_wegid       = c_wegid_up
            act_begda       = sy-datum
            act_endda       = sy-datum
            authority_check = ''
          TABLES
            result_struc    = lt_struc
          EXCEPTIONS
            no_plvar_found  = 1
            no_entry_found  = 2
            OTHERS          = 3.

        LOOP AT lt_struc ASSIGNING <struc>.
          CLEAR: _biorgeh, ls_lead.
          m_get_objec c_otype_o <struc>-objid _biorgeh.
          CHECK _biorgeh IS NOT INITIAL.
          _biorgeh->get_leader(
           EXPORTING
             adatum = sy-datum
           IMPORTING
             result = ls_lead
                  ).

          CLEAR: it_attrib[].

          CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
          CALL FUNCTION 'RH_OM_ATTRIBUTES_READ'
            EXPORTING
              plvar            = '01'
              otype            = 'S'
              objid            = ls_lead-plans
              seldate          = sy-datum
            TABLES
              attrib           = it_attrib
            EXCEPTIONS
              no_active_plvar  = 1
              no_attributes    = 2
              no_values        = 3
              object_not_found = 4
              OTHERS           = 5.
          READ TABLE it_attrib ASSIGNING <attr> WITH KEY attrib = 'ZTOPMGR'.
          CHECK sy-subrc EQ 0.

          CLEAR: _bipernr, _biplans.

          CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
            EXPORTING
              otype            = 'P'
              objid            = ls_lead-pernr
              datum            = sy-datum "ls_perio-pdatv
            CHANGING
              result           = _bipernr
            EXCEPTIONS
              invalid_otype    = 1
              invalid_casting  = 2
              object_not_found = 3
              OTHERS           = 4.

          lv_lidname = _bipernr->get_name( anoauth = abap_true adatum = sy-datum ).
          CLEAR: lv_nachn, lv_vorna, lv_midnm.
          "в поле lv_lidname находится ФИО полность, нужно порезать
          SPLIT lv_lidname AT ' ' INTO lv_nachn lv_vorna lv_midnm.
          lv_lidname = |{ lv_vorna(1) }.{ lv_midnm(1) }.{ lv_nachn }|.
          lv_pernr = ls_lead-pernr.

          IF lv_lidname IS NOT INITIAL.
            EXIT.
          ENDIF.

        ENDLOOP.

        "нужно было сделать группировку по ТОПУ.
        READ TABLE lt_data_dir ASSIGNING FIELD-SYMBOL(<r_data_dir>) WITH KEY pernr = lv_pernr.
        "если не 0 значит такого топа нету нужно добавить в локал лб
        IF sy-subrc NE 0.
          ls_data_dir-pernr = lv_pernr.
          ls_data_dir-lidname = lv_lidname.
          "из таблицы нужно взять location_end ВСЕ которые сейчас есть и записать их под одного топа. Чтобы показать, что именно этот топ отвечает за комадировку
          LOOP AT lt_request ASSIGNING <r_request> WHERE pernr = <r_req_head>-pernr AND reinr = <r_req_head>-reinr.
            lv_location_end = |{ lv_location_end } { <r_request>-location_end },|.
          ENDLOOP.
          "удалить последнюю запятую записываю итог в поле структуры
          len = strlen( lv_location_end ) - 1.
          lv_location_end = lv_location_end+0(len).
          ls_data_indir-location_end = lv_location_end.
          LOOP AT lt_req_reason ASSIGNING <r_reason> WHERE pernr = <r_req_head>-pernr AND reinr = <r_req_head>-reinr.
            ls_data_indir-text = |{ ls_data_indir-text } { <r_reason>-text }|."<r_reason>-text
          ENDLOOP.

          APPEND ls_data_indir TO ls_data_dir-tab_directions.
          APPEND ls_data_dir TO lt_data_dir.
        ELSE.
          "этот топ уже есть и именно ему  в локал тб нужно записать данные.
          LOOP AT lt_request ASSIGNING <r_request> WHERE pernr = <r_req_head>-pernr AND reinr = <r_req_head>-reinr.
            lv_location_end = |{ lv_location_end } { <r_request>-location_end },|.
          ENDLOOP.
          "удалить последнюю запятую записываю итог в поле структуры
          len = strlen( lv_location_end ) - 1.
          lv_location_end = lv_location_end+0(len).
          ls_data_indir-location_end = lv_location_end.
          ls_data_indir-location_end = lv_location_end.
          LOOP AT lt_req_reason ASSIGNING <r_reason> WHERE pernr = <r_req_head>-pernr AND reinr = <r_req_head>-reinr.
            ls_data_indir-text = |{ ls_data_indir-text } { <r_reason>-text }|.
          ENDLOOP.
          APPEND ls_data_indir TO <r_data_dir>-tab_directions.
        ENDIF.
        CLEAR ls_data_dir.
        CLEAR lv_location_end.
        CLEAR ls_data_indir.
      ENDLOOP.
      "Запись в результирующую структуру
      MOVE-CORRESPONDING lt_data_dir TO ls_data_declar-directions.

      CHECK ls_data_declar IS NOT INITIAL.

      l_trans = 'ZHR_UI_DECLARATORY_NOTE'.
      CLEAR: lv_xml_content.
      CALL TRANSFORMATION (l_trans)
      SOURCE
      struct = ls_data_declar
      RESULT XML lv_xml_content.
      ls_stream-value = lv_xml_content.
      ls_stream-mime_type = 'application/msword'."lv_mimetype.
      lv_data = |{ sy-datum+6(2) }.{ sy-datum+4(2) }.{ sy-datum(4) }|.
      lv_time = |{ sy-uzeit(2) }:{ sy-uzeit+2(2) }:{ sy-uzeit+4(2) }|.
      lv_filename = escape( val = lv_filename format = cl_abap_format=>e_url ).
      ls_lheader-name = 'Content-Disposition'.
      ls_lheader-value = 'outline; filename="'.

      ls_lheader-value = 'attachment; filename="' && 'ZHR_UI_DECLARATORY_NOTE' && lv_pernr && '_' && lv_reinr && '.doc"'.
*      ls_lheader-value = |outline; filename="ses.doc"|.
      set_header( is_header = ls_lheader ).
      copy_data_to_ref( EXPORTING is_data = ls_stream
                        CHANGING cr_data = er_stream ).


    WHEN 'AgreementSet'.

      lt_key = io_tech_request_context->get_keys( ).
      lv_pernr = VALUE #( lt_key[ name = 'PERNR' ]-value OPTIONAL ).
      lv_reinr = VALUE #( lt_key[ name = 'REINR' ]-value OPTIONAL ).
      lv_reserv_type = VALUE #( lt_key[ name = 'TYPE' ]-value OPTIONAL ).

*data str type xstring.

      CASE lv_reserv_type.
        WHEN 'agr'.
          l_trans = 'ZHR_SOGLAS_TRIP'.
*          lv_filename =  'Согласие о направлении в командировку'.
*          cl_abap_conv_out_ce=>create( encoding = '1505' )->convert(
*  EXPORTING data = lv_filename
*  IMPORTING buffer = str ).
        WHEN 'weekend'.
          l_trans = 'ZHR_SOGLAS_TRIP_WEEKEND'.
      ENDCASE.
      IF lv_pernr IS INITIAL.
        CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
          EXPORTING
            user   = sy-uname
            begda  = sy-datum
            endda  = sy-datum
*           IV_WITH_AUTHORITY       = 'X'
          TABLES
            ee_tab = lt_user_info.
        lv_pernr = lt_user_info[ 1 ]-pernr.
      ENDIF.
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = lv_pernr
          infty     = '0001'
          begda     = sy-datum
          endda     = sy-datum
        TABLES
          infty_tab = lt_p0001
        EXCEPTIONS
          OTHERS    = 1.
      IF lt_p0001 IS NOT INITIAL.
        lv_persa = lt_p0001[ 1 ]-werks.
      ENDIF.
      idata-pernr = lv_pernr.
      idata-tclas = 'A'.
      idata-begda = sy-datum.
      lv_modif = 'S'.

      CALL FUNCTION 'ZHR_RPTPI_PROCESS'
        EXPORTING
          rptid            = l_trans  "'ZHR_UI_BOOKING_AEROFLOT' "'ORDER_CANCEL_TRIP'
          modif            = lv_modif
          persa            = '1000' "'lv_persa
          datum            = sy-datum
          idata            = idata
        IMPORTING
          rptpi            = _rptpi
          odata            = _odata
        EXCEPTIONS
          rptid_not_found  = 1
          invalid_settings = 2
          rptfm_error      = 3
          OTHERS           = 4.

*      IF _odata IS NOT INITIAL.
*        ASSIGN _odata->* TO <odata>.
*        CALL FUNCTION 'ZHR_RPTPI_SORT_DATA'
*          EXPORTING
*            idata = idata
*          CHANGING
*            odata = <odata>.
**          ls_odata = <odata>.
*      ENDIF.


      CHECK _odata IS NOT INITIAL.


      CLEAR: lv_xml_content.
      CALL TRANSFORMATION (l_trans)
      SOURCE
      struct = _odata"ls_odata
      RESULT XML lv_xml_content.
      ls_stream-value = lv_xml_content.
      ls_stream-mime_type = 'application/msword'."lv_mimetype.
      ls_lheader-name = 'Content-Disposition'.
      ls_lheader-value = 'attachment; filename="' && lv_pernr && '.doc"'.       "str
      set_header( is_header = ls_lheader ).
*      lv_data = |{ sy-datum+6(2) }.{ sy-datum+4(2) }.{ sy-datum(4) }|.
*      lv_time = |{ sy-uzeit(2) }:{ sy-uzeit+2(2) }:{ sy-uzeit+4(2) }|.
*      lv_filename = 'test.doc'. " escape( val = lv_filename format = cl_abap_format=>e_url ).

*
*        CONCATENATE ls_lheader-value ls_data_kpi-uname'(' ls_data_kpi-year ')_' lv_data',' lv_time'.doc' INTO ls_lheader-value.
**        CONCATENATE ls_lheader-value 'Оценка индивидуальных рабочих результатов за ' ls_data_kpi-year 'для целей годового премирования.doc' INTO ls_lheader-value.
*        CONCATENATE ls_lheader-value '"' INTO ls_lheader-value.

*      ls_lheader-value = |outline; filename="test.doc"|.

      copy_data_to_ref( EXPORTING is_data = ls_stream
                        CHANGING cr_data = er_stream ).

*}21.08.2020 Тациев С.Е.
    WHEN 'ListApproveSet'.
      DATA: BEGIN OF ls_out,
              plans TYPE zhre_plans,
              fio   TYPE zhre_ui_fio_appr,
              reinr TYPE reinr,
              date  TYPE zhr_date,
              tab   TYPE zhr_ui_trip_appr_list_t,
            END OF ls_out.

      lt_key = io_tech_request_context->get_keys( ).
      lv_pernr = VALUE #( lt_key[ name = 'PERNR' ]-value OPTIONAL ).
      ls_out-reinr = VALUE #( lt_key[ name = 'REINR' ]-value OPTIONAL ).

      get_appr_list( EXPORTING
        iv_pernr = lv_pernr
        iv_reinr = ls_out-reinr
        CHANGING
          ct_list = ls_out-tab ).
      CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
        EXPORTING
          otype  = c_otype_p
          objid  = lv_pernr
          datum  = sy-datum
        CHANGING
          result = _bipernr
        EXCEPTIONS
          OTHERS = 1.
      IF _bipernr IS NOT INITIAL.
        TRY.
            DATA(lv_fio_r) = _bipernr->get_name( apadej = 'R' adatum = sy-datum anoauth = abap_true ).
            DATA(lv_fio_i) = _bipernr->get_name( adatum = sy-datum anoauth = abap_true alangu = 'E' ).
            _bipernr->get_orgass(
              EXPORTING
                adatum = sy-datum
              IMPORTING
                resplans = _biplans
          ).
            IF _biplans IS NOT INITIAL.
              DATA(lv_plnam) = _biplans->get_name( apadej = 'R' adatum = sy-datum anoauth = abap_true ).
            ENDIF.
          CATCH cx_root.
        ENDTRY.
      ENDIF.
      ls_out-plans = lv_plnam.
      ls_out-fio = lv_fio_r.
      ls_out-date = VALUE #( ls_out-tab[ 1 ]-date OPTIONAL ).

      CLEAR: lv_xml_content.
      CALL TRANSFORMATION zhr_ui_trip_list_approve
           SOURCE struct = ls_out
           RESULT XML lv_xml_content.
      ls_stream-value = lv_xml_content.
      ls_stream-mime_type = 'application/msword'."lv_mimetype.
      ls_lheader-name = 'Content-Disposition'.
      ls_lheader-value = 'attachment; filename="' && lv_fio_i && '_' && ls_out-reinr && '.doc"'.
      set_header( is_header = ls_lheader ).
      copy_data_to_ref( EXPORTING is_data = ls_stream
                        CHANGING cr_data = er_stream ).
    WHEN OTHERS.
  ENDCASE.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->APPROVE
* +-------------------------------------------------------------------------------------------------+
* | [--->] I_REINR                        TYPE        ZEHR_REINR(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [--->] IT_PARAM                       TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR(optional)
* | [<---] ES_DATA                        TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TS_HANDLERRETURN
* | [<---] EV_MESSAGE                     TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD approve.
    DATA: ls_entity        TYPE zcl_zhr_fi_tv_req_mpc=>ts_handlerreturn,
          lt_entityset     TYPE zcl_zhr_fi_tv_req_mpc=>tt_handlerreturn,
          ls_parameter     TYPE /iwbep/s_mgw_name_value_pair,
          lv_reinr         TYPE reinr,
          lv_uname         TYPE uname,
          ls_trip          TYPE zhrt_ui_trip,
          ls_trip_old      TYPE zhrt_ui_trip,
          lv_status        TYPE c LENGTH 2,
          lt_userdata      TYPE ptrv_bapi_t_userdata,
          lv_message       TYPE zhre_ui_trip_zpl_message,
          lv_role_res      TYPE agr_name,
          lv_role_tax      TYPE agr_name,
          lv_role_acc      TYPE agr_name,
          lv_role_eio      TYPE agr_name,
          lv_role_test     TYPE agr_name,
          lv_has_role_res  TYPE abap_bool,
          lv_has_role_tax  TYPE abap_bool,
          lv_has_role_acc  TYPE abap_bool,
          lv_has_role_eio  TYPE abap_bool,
          lv_has_role_test TYPE abap_bool,
          lv_temp          TYPE string,
          lv_appid         TYPE string,
          lt_route         TYPE zhr_ui_trip_approver_t,
          ls_route         LIKE LINE OF lt_route,
          lv_author        TYPE uname,
          lv_comment       TYPE c LENGTH 500,
          lv_ret_res       TYPE subrc,
          l_kostl          TYPE csks-kostl,
          l_fistl          TYPE ptp02-zzfistl,
          lv_period        TYPE ptrv_perod VALUE '000',
          l_pernr          TYPE persno,
          lv_ebeln         TYPE ebeln,
          lt_advances      TYPE TABLE OF zstv_eksh_advances,
          ls_framedata     TYPE zstv_eksh_framedata,
          ls_return        TYPE bapireturn,
          lt_cdtxt         TYPE TABLE OF cdtxt,
          ls_status        TYPE bapitrstao,
          ls_status_change TYPE bapitrvsta.
    DEFINE m_read_inf_for_date.
      CLEAR &5.
*отключаю проверку полномочий
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
*читаю по ТН из 0002 ИТ данные пользователя
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = &1
          infty     = &2
          begda     = &3
          endda     = &4
        TABLES
          infty_tab = &5
        EXCEPTIONS
          OTHERS    = 1.
    END-OF-DEFINITION.

    DEFINE m_check_role.
      SELECT SINGLE agr_name
        INTO @lv_temp
        FROM agr_users
       WHERE uname = @sy-uname
         AND from_dat <= @sy-datum
         AND to_dat >= @sy-datum
         AND agr_name LIKE @&1.
      IF sy-subrc = 0.
        &2 = abap_true.
      ELSE.
        &2 = abap_false.
      ENDIF.
    END-OF-DEFINITION.
    IF it_param IS INITIAL.
      DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
    ELSE.
      lt_parameter[] = it_param[].
    ENDIF.
    lv_reinr = VALUE #( lt_parameter[ name = 'REINR' ]-value OPTIONAL ).
    lv_uname = VALUE #( lt_parameter[ name = 'UNAME' ]-value OPTIONAL ).
    lv_appid = VALUE #( lt_parameter[ name = 'APPID' ]-value OPTIONAL ).
    lv_comment = VALUE #( lt_parameter[ name = 'COMMENT' ]-value OPTIONAL ). "ins 03.06.2021 Серёгин И.М.
    IF lv_uname IS INITIAL.
      lv_uname = sy-uname.
    ENDIF.

    SELECT SINGLE *
        FROM zhrt_ui_trip
        INTO CORRESPONDING FIELDS OF ls_trip
        WHERE zhrt_ui_trip~reinr = lv_reinr.
    ls_trip_old = ls_trip.
    ls_trip_old-app_id = ''.
    ls_trip_old-rdate = '00000000'.
    ls_trip-app_id = lv_appid.
    l_pernr = ls_trip-pernr.
*    ls_trip-aenam = sy-uname."lv_uname.   " del NaumovSM
    ls_trip-aenam = lv_uname.   " ins NaumovSM
    ls_trip-rdate = sy-datum.
*    ls_trip-rtime = sy-timlo.   " del NaumovSM
    ls_trip-rtime = sy-uzeit.    " ins NaumovSM
    CLEAR ls_trip-deleg.
    ls_trip-commentary = lv_comment."ins 03.06.2021 Серёгин И.М.
    SELECT SINGLE * FROM ptrv_perio INTO @DATA(ls_perio) WHERE pernr = @ls_trip-pernr AND reinr = @lv_reinr.

    CASE lv_appid.
      WHEN 'APP'.
        get_appr_route( EXPORTING
                            im_author = ls_trip-author
                            iv_pernr = ls_trip-pernr
                            im_type = ls_trip-trip_goal
                            iv_past_trip = ls_trip-past_trip
                            iv_status = ls_trip-status_1
                        CHANGING
                            ch_tab = lt_route ).
        IF ls_trip-status_1 NE '4'.
* Если статус был 5 то сразу переводим в 8
          IF ls_trip-status_2 = '05'.
            ls_trip-status_2 = 8.
            CLEAR ls_trip-approver.
            IF ls_trip-status_1 EQ '1'.
              TRY.
                  DATA lt_return TYPE bapiret2_t.
                  CALL FUNCTION 'Z_HR_TV_ESS_ORDER'
                    EXPORTING
                      iv_pernr    = CONV persno( ls_trip-pernr )
                      iv_tripno   = CONV reinr( ls_trip-reinr )
                      iv_status_1 = CONV zhre_ui_trip_status_1( ls_trip-status_1 )
                      iv_status_2 = CONV zhre_ui_trip_status_2( ls_trip-status_2 )
                    IMPORTING
                      ev_res      = lv_ret_res
                      et_return   = lt_return.
                CATCH cx_root.
*                Добавить вывод сообщения
                  EXIT.
              ENDTRY.
            ENDIF.
          ELSE.
            DATA: ls_route_new LIKE LINE OF lt_route.
            IF ls_trip-trip_goal EQ '011' AND ls_trip-edu_appr_flag EQ abap_true.
              CLEAR: ls_trip-edu_appr_flag, ls_route_new-uname.
              ls_route_new-uname = VALUE #( lt_route[ dd = abap_true ]-uname OPTIONAL ).
            ELSE.
              READ TABLE lt_route INTO ls_route WITH KEY uname = lv_uname.
              IF sy-subrc EQ 0.
                IF lines( lt_route ) = sy-tabix.
                  ls_trip-status_2 = 5.
*                  ls_route_new-uname = VALUE #( lt_route[ dd = abap_true ]-uname OPTIONAL ).
*                  IF ls_route_new-uname IS INITIAL.
                   ls_route_new-uname = VALUE #( lt_route[ top = abap_true ]-uname OPTIONAL ).
                   IF ls_route_new-uname IS INITIAL.
                     ls_route_new-uname = VALUE #( lt_route[ ssp_boss = abap_true ]-uname OPTIONAL ).
                     IF ls_route_new-uname IS INITIAL.
                       ls_route_new-uname = VALUE #( lt_route[ lines( lt_route ) ]-uname OPTIONAL ).
                     ENDIF.
                   ENDIF.
*                  ENDIF.
                ELSE.
                  READ TABLE lt_route INDEX sy-tabix + 1 INTO ls_route_new.
                  CHECK sy-subrc EQ 0.
                  IF ls_trip-trip_goal EQ 16.
                    CASE abap_true.
                      WHEN ls_route-ssp_boss.
                        ls_trip-status_2 = 5.
                      WHEN ls_route-top.
                        ls_trip-status_2 = 8.
                      WHEN OTHERS.
                    ENDCASE.
                  ELSE.
                    CASE abap_true.
                      WHEN ls_route-vp.
                        ls_trip-status_2 = 5.
                      WHEN ls_route-gid.
                        ls_trip-status_2 = 8.
                      WHEN OTHERS.
                    ENDCASE.
                    IF check_top_man( im_uname = ls_trip-author ) = abap_true AND ls_route-ra = abap_true.
                      ls_trip-status_2 = 5.
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            ls_trip-approver = ls_route_new-uname.
            IF ls_trip-trip_goal EQ '011' AND ls_route_new-dd EQ abap_true AND ls_trip-past_trip EQ abap_false AND ls_trip-status_1 NE '4'.
              CLEAR ls_trip-approver.
              ls_trip-edu_appr_flag = abap_true.
            ENDIF.
          ENDIF.
        ELSE.
          READ TABLE lt_route INTO ls_route INDEX 1.
          IF ls_route-ssp_boss IS INITIAL AND ls_route-top IS INITIAL AND ls_route-subor_gid IS INITIAL.
            READ TABLE lt_route INTO DATA(ls_route_curr) WITH KEY uname = lv_uname.
            IF ( ls_route_curr-nep_boss EQ abap_true AND ls_trip-status_2 = 5 ) OR ls_route_curr-ssp_boss EQ abap_true OR ls_route_curr-top EQ abap_true.
              ls_trip-status_2 = 8.
            ELSEIF ls_route_curr-nep_boss EQ abap_true.
              ls_trip-status_2 = 5.
              READ TABLE lt_route INTO ls_route_new INDEX sy-tabix + 1.
              IF sy-subrc = 4.
                READ TABLE lt_route INTO ls_route_new INDEX lines( lt_route ).
              ENDIF.
            ENDIF.
          ELSEIF ls_route-ssp_boss IS NOT INITIAL OR ls_route-subor_gid IS NOT INITIAL.
            ls_trip-status_2 = 8.
            CLEAR ls_route_new-uname.
          ELSEIF ls_route-top IS NOT INITIAL.
            ls_trip-status_2 = 8.
            CLEAR ls_route_new-uname.
          ENDIF.
          ls_trip-approver = ls_route_new-uname.
        ENDIF.
* Заглушка для ГИДа
        READ TABLE lt_route INTO ls_route INDEX 1.
        IF sy-subrc EQ 0.
          IF ls_route-gid EQ abap_true.
            CLEAR ls_trip-approver.
            ls_trip-status_2 = 8.
          ENDIF.
        ENDIF.
      WHEN 'AVA'.
        IF sy-sysid = 'HR3'.
          lv_role_acc = c_test_role_acc.
          lv_role_tax = c_test_role_tax.
        ELSE.
          lv_role_acc = c_role_acc.
          lv_role_tax = c_role_tax.
        ENDIF.
        m_check_role lv_role_acc lv_has_role_acc.
        m_check_role lv_role_tax lv_has_role_tax.
        IF lv_has_role_tax = abap_true.
          ls_trip-tax_appr = abap_true.
        ELSEIF lv_has_role_acc = abap_true.
          ls_trip-status_1 = 5.
          ls_trip-status_2 = 13.
        ENDIF.
    ENDCASE.

* { ins NaumovSM 10.03.2021 7700148647
*   Проверяем и заполняем если делегирован кем-то\
    IF sy-uname <> ls_trip-aenam.
      ls_trip-deleg = sy-uname.
    ENDIF.
* } ins NaumovSM 10.03.2021 7700148647

    MODIFY zhrt_ui_trip FROM ls_trip.

    DATA: lt_log TYPE TABLE OF zhrt_ui_trip_log.
    APPEND INITIAL LINE TO lt_log ASSIGNING FIELD-SYMBOL(<log>).
    MOVE-CORRESPONDING ls_trip TO <log>.
    <log>-aenam = lv_uname.
*    CALL FUNCTION 'ZHR_UI_TRIP_UPD'
*      IN UPDATE TASK
*      EXPORTING
*        it_mod = lt_log.
    MODIFY zhrt_ui_trip_log FROM TABLE lt_log[].


    CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
      EXPORTING
        objectid            = ls_trip-history_objectid
        tcode               = sy-tcode
        utime               = sy-uzeit
        udate               = sy-datum
        username            = lv_uname
        n_zhrt_ui_trip      = ls_trip
        o_zhrt_ui_trip      = ls_trip_old
        upd_zhrt_ui_trip    = 'U'
      TABLES
        icdtxt_zhr_fio_trip = lt_cdtxt.

    ls_entity-reinr = lv_reinr.
    ls_entity-status = lv_status.

    APPEND ls_entity TO lt_entityset.

    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = l_pernr
        tripnumber     = lv_reinr
      IMPORTING
        framedata      = ls_framedata
        status         = ls_status
      TABLES
        advances       = lt_advances
        userdata       = lt_userdata.
    SELECT SINGLE contn INTO @DATA(l_rfc_conn_rnp) FROM t7rurptcst00 WHERE progr = 'Z_FIORI_FI_TV'.

    IF ls_trip-status_2 EQ '8'.
      IF ls_trip-status_1 EQ '1'. " Создаем зпл
        IF ls_trip-adv_payment EQ abap_true.
          create_zpl( EXPORTING
                        iv_pernr = ls_trip-pernr
                        iv_reinr = lv_reinr
                      IMPORTING
                        ev_ebeln = lv_ebeln
                        ev_message = lv_message ).
          IF lv_ebeln IS INITIAL.
            create_zpl_error( EXPORTING
                                iv_pernr = ls_trip-pernr
                                iv_reinr = lv_reinr
                                iv_message = CONV string( lv_message ) ).
          ENDIF.
        ENDIF.
        ls_framedata-zzestdt = sy-datum.
        MOVE-CORRESPONDING ls_status TO ls_status_change.
        CALL FUNCTION 'Z_TV_BAPI_TRIP_CHANGE'
          EXPORTING
            employeenumber = l_pernr
            tripnumber     = lv_reinr
            framedata      = ls_framedata
            status         = ls_status_change
          TABLES
            return         = lt_return.
      ELSEIF ls_trip-status_1 EQ '3'. " Удаляем зпл
        CALL FUNCTION 'ZFM_PLR_RFC_DELETE_ZPL_Z735'
          DESTINATION l_rfc_conn_rnp
          EXPORTING
            iv_ebeln   = VALUE #( lt_advances[ 1 ]-zzzplnr OPTIONAL )
            iv_reinr   = lv_reinr
            iv_pernr   = ls_trip-pernr
          IMPORTING
            ev_message = lv_message.
      ELSEIF ls_trip-status_1 EQ '4'. "Заполняем дату утверждения
*        ls_framedata-exchange_date = sy-datum.
*        CALL FUNCTION 'Z_TV_BAPI_TRIP_CHANGE'
*          EXPORTING
*            employeenumber = l_pernr
*            tripnumber     = lv_reinr
*            framedata      = ls_framedata
*          TABLES
*            return         = lt_return.
      ENDIF.
    ENDIF.
    IF ls_trip-status_1 EQ '5' AND ls_trip-status_2 EQ '13'.
      DATA(lv_zpl_status) = VALUE #( lt_advances[ 1 ]-zzzplst OPTIONAL ).
      IF lv_zpl_status IS INITIAL.
        CALL FUNCTION 'ZFM_PLR_RFC_DELETE_ZPL_Z735'
          DESTINATION l_rfc_conn_rnp
          EXPORTING
            iv_ebeln   = VALUE #( lt_advances[ 1 ]-zzzplnr OPTIONAL )
            iv_reinr   = lv_reinr
            iv_pernr   = ls_trip-pernr
          IMPORTING
            ev_message = lv_message.
      ENDIF.
    ENDIF.
    SELECT SINGLE status_appr, status_calc
             INTO @DATA(ls_pr05_status)
             FROM zhrt_ui_trip_st
            WHERE zhrt_ui_trip_st~status_1 = @ls_trip-status_1
              AND zhrt_ui_trip_st~status_2 = @ls_trip-status_2.

    CALL FUNCTION 'BAPI_TRIP_CHANGE_STATUS'
      EXPORTING
        employeenumber = ls_trip-pernr
        tripnumber     = lv_reinr
        periodnumber   = lv_period
        approved_new   = ls_pr05_status-status_appr
        account_new    = ls_pr05_status-status_calc
      IMPORTING
        return         = ls_return.

    IF ls_return-code NE '56063' AND ls_return-code NE '56064'.
      ev_message = ls_return-message.
    ELSE.
*отправка уведомления
      SUBMIT zhr_fio_change_status_mail
        WITH p_trip EQ lv_reinr
        WITH p_pernr EQ l_pernr
*    WITH p_st EQ lv_status
        WITH p_tr_req = abap_true
        WITH p_ini = abap_false "to reset default
      AND RETURN.
      es_data = ls_entity.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->AUTOCLASSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_AUTOCLASS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method AUTOCLASSSET_GET_ENTITYSET.
  SELECT  TA20PS1~SPECID AS code,
          TA20PS1~NAME AS name
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  FROM TA20PS1
  WHERE TA20PS1~SPRAS = @sy-langu
    AND TA20PS1~CATEGORY = 'C'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->AVAREGIONSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_AVAREGION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD avaregionset_get_entityset.
    SELECT * FROM t706o
     WHERE spras = @sy-langu
       AND morei = '33'
       AND land1 = 'RU'
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->AVAUSERFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_AVAUSERFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD avauserfilterset_get_entityset.

  DATA lv_appid TYPE string.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_appid) = VALUE #( lt_filter[ property = 'APPID' ]-select_options OPTIONAL ).
  lv_appid = VALUE #( lr_appid[ 1 ]-low OPTIONAL ).
  CHECK lv_appid = 'ZHR_FI_TV_AVA'.

  TYPES: BEGIN OF ty_ui_trip.
  TYPES: avauser TYPE zhrt_ui_trip-tax_uname
       , pernr TYPE zhrt_ui_trip-pernr
       .
  TYPES: END OF ty_ui_trip.
  DATA: lv_tax_appr TYPE zhrt_ui_trip-tax_appr
      , lt_trip TYPE TABLE OF ty_ui_trip
      .
  DATA(lt_p0002) = VALUE p0002_tab( ).
  DATA(lv_pernr) = VALUE pernr_d( ).

  lv_tax_appr = abap_false.

  SELECT DISTINCT tax_uname AS avauser pernr
    INTO TABLE lt_trip "et_entityset
    FROM zhrt_ui_trip
   WHERE tax_appr = lv_tax_appr
     AND status_1 = '5'.

  LOOP AT lt_trip ASSIGNING FIELD-SYMBOL(<p_trip>).
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<p_entityset>).
    <p_entityset>-avauser = <p_trip>-avauser.
    lv_pernr = <p_trip>-pernr.
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CLEAR lt_p0002[].
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = lv_pernr
        infty     = '0002'
        begda     = sy-datum
        endda     = sy-datum
*       bypass_buffer = abap_true
      TABLES
        infty_tab = lt_p0002
      EXCEPTIONS
        OTHERS    = 0.
    ASSIGN lt_p0002[ 1 ] TO FIELD-SYMBOL(<p_p0002>).
    IF sy-subrc = 0.
      CONCATENATE <p_p0002>-nachn <p_p0002>-inits INTO <p_entityset>-surname_init SEPARATED BY space.
    ENDIF.
  ENDLOOP.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->AVIACLASSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_AVIACLASS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method AVIACLASSSET_GET_ENTITYSET.
  SELECT  TA20PS1~SPECID AS code,
          TA20PS1~NAME AS name
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  FROM TA20PS1
  WHERE TA20PS1~SPRAS = @sy-langu
    AND TA20PS1~CATEGORY = 'F'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CALC_NDS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE        DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD calc_nds.
    DATA: ls_entity TYPE zcl_zhr_fi_tv_req_mpc=>ts_prepay,
          lv_tax    TYPE mwskz,
          lv_sum    TYPE bseg-wrbtr,
          lt_mwdat  TYPE TABLE OF rtax1u15,
          lv_pernr  TYPE persno,
          lv_bukrs  TYPE bukrs,
          lt_p0001  TYPE TABLE OF p0001.
    DATA(lt_parameter) = io_tech_request_context->get_parameters( ).

    lv_tax = VALUE #( lt_parameter[ name = 'TAXCODE' ]-value OPTIONAL ).
    lv_sum = VALUE #( lt_parameter[ name = 'SUM' ]-value OPTIONAL ).
    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
      EXPORTING
        user_name               = sy-uname
      IMPORTING
        employeenumber          = lv_pernr
      EXCEPTIONS
        no_employeenumber_found = 1
        subtype_not_available   = 2
        OTHERS                  = 3.
    m_read_inf lv_pernr '0001' lt_p0001.
    lv_bukrs = VALUE #( lt_p0001[ 1 ]-bukrs OPTIONAL ).
    CALL FUNCTION 'CALCULATE_TAX_FROM_GROSSAMOUNT'
      EXPORTING
        i_bukrs                 = lv_bukrs
        i_mwskz                 = lv_tax
*       I_TXJCD                 = ' '
        i_waers                 = 'RUB'
        i_wrbtr                 = lv_sum
*       I_ZBD1P                 = 0
*       I_PRSDT                 =
*       I_PROTOKOLL             =
*       I_TAXPS                 =
*       I_ACCNT_EXT             =
*       I_ACCDATA               =
*       IS_ENHANCEMENT          =
*       I_PRICING_REFRESH_TX    = ' '
* IMPORTING
*       E_FWNAV                 =
*       E_FWNVV                 =
*       E_FWSTE                 =
*       E_FWAST                 =
      TABLES
        t_mwdat                 = lt_mwdat
      EXCEPTIONS
        bukrs_not_found         = 1
        country_not_found       = 2
        mwskz_not_defined       = 3
        mwskz_not_valid         = 4
        account_not_found       = 5
        different_discount_base = 6
        different_tax_base      = 7
        txjcd_not_valid         = 8
        not_found               = 9
        ktosl_not_found         = 10
        kalsm_not_found         = 11
        parameter_error         = 12
        knumh_not_found         = 13
        kschl_not_found         = 14
        unknown_error           = 15
        OTHERS                  = 16.

    ls_entity-fwste = VALUE #( lt_mwdat[ 1 ]-wmwst OPTIONAL ).
    copy_data_to_ref( EXPORTING is_data = ls_entity
                      CHANGING cr_data = er_data ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CALC_SUM
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE        DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD calc_sum.
    DATA: ls_entity     TYPE zcl_zhr_fi_tv_req_mpc=>ts_prepay,
          lv_date       TYPE dats,
          lv_waers      TYPE waers,
          lv_waers_calc TYPE waers,
          lv_sum        TYPE p DECIMALS 2. "dmbtr.
    DATA(lt_parameter) = io_tech_request_context->get_parameters( ).

    lv_date = VALUE #( lt_parameter[ name = 'DATE' ]-value OPTIONAL ).
    lv_waers = VALUE #( lt_parameter[ name = 'WAERS' ]-value OPTIONAL ).
    lv_waers_calc = VALUE #( lt_parameter[ name = 'WAERSCALC' ]-value OPTIONAL ).
    lv_waers_calc = COND #( WHEN lv_waers_calc IS INITIAL OR lv_waers_calc = 'RUR' THEN 'RUB' ELSE lv_waers_calc ).
    lv_sum = VALUE #( lt_parameter[ name = 'SUM' ]-value OPTIONAL ).

    IF lv_waers NE lv_waers_calc.
      CALL FUNCTION 'CONVERT_TO_LOCAL_CURRENCY'
        EXPORTING
          date             = lv_date
          foreign_amount   = lv_sum
          foreign_currency = lv_waers
          local_currency   = lv_waers_calc
        IMPORTING
          exchange_rate    = ls_entity-zzukurs_c
          local_amount     = ls_entity-zzdmbtr
        EXCEPTIONS
          no_rate_found    = 1
          overflow         = 2
          no_factors_found = 3
          no_spread_found  = 4
          derived_2_times  = 5
          OTHERS           = 6.
      IF lv_waers EQ 'RUR'.
        ls_entity-zzukurs_c = lv_sum.
      ENDIF.
    ELSE.
      ls_entity-zzukurs_c = 1.
    ENDIF.
    CONDENSE ls_entity-zzukurs_c NO-GAPS.

    copy_data_to_ref( EXPORTING is_data = ls_entity
                      CHANGING cr_data = er_data ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CARDSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_CARD
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD cardset_get_entityset.
    DATA: lv_pernr TYPE persno,
          lt_p0105 TYPE TABLE OF p0105.
    CONSTANTS: lc_subt TYPE subty VALUE '9011'.
    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    lv_pernr = VALUE #( lt_keys[ name = 'PERNR' ]-value OPTIONAL ).
    get_cardset( EXPORTING
                    iv_pernr = lv_pernr
                  CHANGING
                    ct_set = et_entityset ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHANGE_RESERVE_STATUS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD change_reserve_status.
    DATA(lt_parameters) = io_tech_request_context->get_parameters( ).
    DATA:
      lv_reinr            TYPE reinr,
      lv_pernr            TYPE persno,
      lv_status           TYPE char1,
      lv_comment          TYPE string,
      lv_appid            TYPE string,
      ls_entity           TYPE zcl_zhr_fi_tv_req_mpc_ext=>ts_reserve02,
      ls_ztrip_old        TYPE zhrt_ui_trip,
      ls_ztrip_new        TYPE zhrt_ui_trip,
      lt_p0105            TYPE TABLE OF p0105,
      ls_p0105            TYPE p0105,
      lv_change_indicator TYPE c.
    DEFINE m_read_inf.
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = &1
          infty     = &2
          begda     = sy-datum
          endda     = sy-datum
        TABLES
          infty_tab = &3.
    END-OF-DEFINITION.

    lv_reinr = VALUE #( lt_parameters[ name = 'REINR' ]-value OPTIONAL ).
    lv_pernr = VALUE #( lt_parameters[ name = 'PERNR' ]-value OPTIONAL ).
    lv_status = VALUE #( lt_parameters[ name = 'STATUS' ]-value OPTIONAL ).
    lv_comment = VALUE #( lt_parameters[ name = 'MESSAGE' ]-value OPTIONAL ).
    lv_appid = VALUE #( lt_parameters[ name = 'APPID' ]-value OPTIONAL ).

    SELECT SINGLE * FROM zhrt_ui_trip
      INTO @ls_ztrip_old
      WHERE zhrt_ui_trip~reinr = @lv_reinr.
*        AND zhrt_ui_trip~pernr = @lv_pernr.

    ls_ztrip_new = ls_ztrip_old.

    CLEAR ls_ztrip_new-deleg.   " ins NaumovSM - у обученцев нет делегатов

    IF lv_appid NE 'APP'.

*      CLEAR ls_ztrip_old-aenam.

*    ls_ztrip_new-reserv_st = cond #( when lv_status is initial and ls_ztrip_old-reserv_st = '0' then '2' else lv_status ).

      IF lv_appid = 'AVA'.
        ls_ztrip_new-status_1 = '5'.
        ls_ztrip_new-status_2 = '3'.
        IF ls_ztrip_new-tax_appr = 'X'.
          ls_ztrip_new-acc_uname = sy-uname.
        ELSE.
          ls_ztrip_new-tax_uname = sy-uname.
        ENDIF.
      ELSEIF lv_appid = 'RES'.
        ls_ztrip_old-reserv_st = '0'.
        IF lv_status = '0'.
*        ls_ztrip_new-reserv_uname = sy-uname.
*        if ls_ztrip_old-reserv_st = '0'.
*          ls_ztrip_new-reserv_st = '2'.
*        endif.
        ELSE.
          ls_ztrip_new-reserv_st = lv_status.
        ENDIF.
        IF lv_status <> '5'.
*        Подтверждение бронирования
          ls_ztrip_new-reserv_uname = sy-uname.
        ENDIF.
        IF lv_status = '8'.
*        Возврат бронирования с корректировки - перевод в статус Заявка в работе
          ls_ztrip_new-reserv_st = '2'.
        ENDIF.
      ELSEIF lv_appid = 'REQ'.
        ls_ztrip_new-status_1 = '4'.
        ls_ztrip_new-status_2 = '1'.
        CLEAR ls_ztrip_new-commentary.
      ELSEIF lv_appid = 'EMP'.
        ls_ztrip_new-status_1 = '5'.
        ls_ztrip_new-status_2 = '1'.
      ENDIF.



*    ls_ztrip_new-reserv_uname = sy-uname.
      ls_ztrip_new-comment_rs = lv_comment.
      ls_ztrip_new-aenam = sy-uname.
      ls_ztrip_new-rdate = sy-datum.
*      ls_ztrip_new-rtime = sy-timlo.   " del NaumovSM
      ls_ztrip_new-rtime = sy-uzeit.   " ins NaumovSM
      ls_ztrip_old-app_id = ''.
      ls_ztrip_new-app_id = lv_appid. " 'RES'.
*    ls_ztrip_new-status_1 = '6'.
*    ls_ztrip_new-status_2 = lv_status.
*    if lv_status = '2'.

*    endif.
    ELSE.
      IF lv_status EQ '9'.
        m_read_inf lv_pernr '0105' lt_p0105.
        ls_ztrip_new-approver = VALUE #( lt_p0105[ subty = '0001' ]-usrid OPTIONAL ).
        IF ls_ztrip_new-approver IS INITIAL.
          CLEAR er_data.
          EXIT.
        ENDIF.
        ls_ztrip_new-aenam = sy-uname.
      ELSE.
        ls_ztrip_new-aenam = ls_ztrip_new-approver = sy-uname.
      ENDIF.
      DATA(lv_appid_new) = 'APP'.
      ls_ztrip_new-rdate = sy-datum.
*      ls_ztrip_new-rtime = sy-timlo.   " del NaumovSM
      ls_ztrip_new-rtime = sy-uzeit.   " ins NaumovSM
    ENDIF.


    DATA lt_cdtxt          TYPE TABLE OF cdtxt.

*    CALL FUNCTION 'ZHR_FIO_TRIP_RS_WRITE_DOCUMENT'
*      EXPORTING
*        objectid                   = ls_ztrip_old-history_objectid
*        tcode                      = sy-tcode
*        utime                      = sy-uzeit
*        udate                      = sy-datum
*        username                   = sy-uname
**       PLANNED_CHANGE_NUMBER      = ' '' '
*        object_change_indicator    = 'U'
**       PLANNED_OR_REAL_CHANGES    = ' '' '
**       NO_CHANGE_POINTERS         = ' '' '
*        upd_icdtxt_zhr_fio_trip_rs = 'U'
*        n_zhrt_ui_trip             = ls_ztrip_new
*        o_zhrt_ui_trip             = ls_ztrip_old
*        upd_zhrt_ui_trip           = 'U'
*      TABLES
*        icdtxt_zhr_fio_trip_rs     = lt_cdtxt.


    CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
      EXPORTING
        objectid                = ls_ztrip_old-history_objectid "'0000000309'       "'0000000299'   "
        tcode                   = sy-tcode
        utime                   = sy-uzeit
        udate                   = sy-datum
        username                = sy-uname
*       PLANNED_CHANGE_NUMBER   = ' '
        object_change_indicator = 'U'
*       PLANNED_OR_REAL_CHANGES = ' '
*       NO_CHANGE_POINTERS      = ' '
        upd_icdtxt_zhr_fio_trip = 'U'
*       UPD_ZHRT_UI_REQUEST     = ' '
        n_zhrt_ui_trip          = ls_ztrip_new
        o_zhrt_ui_trip          = ls_ztrip_old
        upd_zhrt_ui_trip        = 'U'
      TABLES
        icdtxt_zhr_fio_trip     = lt_cdtxt
*       XZHRT_UI_REQUEST        =
*       YZHRT_UI_REQUEST        =
      .
    IF sy-subrc = 0.
      CLEAR ls_ztrip_new-app_id.
      ls_ztrip_new-app_id = lv_appid_new.
      MODIFY zhrt_ui_trip FROM ls_ztrip_new.
      CASE ls_ztrip_new.
        WHEN '2'.
          ls_entity-status = 'Заявка взята в работу'.
        WHEN '3'.
          ls_entity-status = 'Заявка на корректировке'.
        WHEN '4'.
          ls_entity-status = 'Бронирование на подтверждении'.
        WHEN '5'.
          ls_entity-status = 'Бронирование подтверждено'.
        WHEN '6'.
          ls_entity-status = 'Бронирование завершено'.
        WHEN '7'.
          ls_entity-status = 'Отмена бронирования'.
        WHEN '8'.
          ls_entity-status = 'Бронирование отклонено'.
      ENDCASE.

      ls_entity-pernr = ls_ztrip_new-pernr.
      ls_entity-reinr = ls_ztrip_new-reinr.
      ls_entity-subty = ls_ztrip_new-subty.
      DATA req TYPE reinr.
      DATA st TYPE string.
      IF lv_appid = 'RES'.
        IF lv_status  = '3' OR lv_status  = '4' OR lv_status  = '6' OR lv_status  = '7'.
          SUBMIT zhr_fio_change_status_mail
          WITH p_trip EQ lv_reinr
          WITH p_pernr EQ lv_pernr
*          with p_st eq lv_status
          WITH p_reserv = abap_true
          WITH p_ini = abap_false "to reset default
          AND RETURN.
        ENDIF.
      ENDIF.
    ELSE.
      ls_entity-status = 'error'.
    ENDIF.
    copy_data_to_ref( EXPORTING is_data = ls_entity
                          CHANGING cr_data = er_data ).

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHECKBOXFILTERSE_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_CHECKBOXFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD checkboxfilterse_get_entityset.

  SELECT id text
    FROM zthr_ui_checkbox
    INTO CORRESPONDING FIELDS OF TABLE et_entityset.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHECK_CHANGE_REQUSET_TYPE_H
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_BLOCKNAME                   TYPE        STRING
* | [--->] IS_OLD                         TYPE        ZHR_UI_TRIP_CHECK_CHANGE_S
* | [--->] IS_NEW                         TYPE        ZHR_IU_TRIP_S
* | [<-->] CT_LOG                         TYPE        ZHR_TRIP_CHLOG_T
* | [<-->] CS_LOG                         TYPE        ZHRT_TRIP_CHLOG
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD check_change_requset_type_h.
    DATA: lv_date TYPE dats,
          lv_time TYPE tims.
    DEFINE m_add_line_log.
      cs_log-fieldname = &1.
      cs_log-blockname = &2.
      cs_log-old_value = &3.
      cs_log-new_value = &4.
      APPEND cs_log TO ct_log.
    end-OF-DEFINITION.
    CONVERT TIME STAMP is_new-date_time_beg TIME ZONE '' INTO DATE lv_date TIME lv_time.
    IF lv_date NE is_old-date_beg. "Дата заезда в гостиницу
      m_add_line_log 'DATE_BEG' iv_blockname is_old-date_beg lv_date.
    ENDIF.
    IF lv_time NE is_old-time_beg. "Время заезда в гостиницу
      m_add_line_log 'TIME_BEG' iv_blockname is_old-time_beg lv_time.
    ENDIF.
    CONVERT TIME STAMP is_new-date_time_end TIME ZONE '' INTO DATE lv_date TIME lv_time.
    IF lv_date NE is_old-date_end. "Дата выселения из гостиницы
      m_add_line_log 'DATE_END' iv_blockname is_old-date_end lv_date.
    ENDIF.
    IF lv_time NE is_old-time_end. "Время выселения из гостиницы
      m_add_line_log 'TIME_END' iv_blockname is_old-time_end lv_time.
    ENDIF.
    IF is_new-hotel NE is_old-hotel. "Наименование гостиницы
      m_add_line_log 'HOTEL' iv_blockname is_old-hotel is_new-hotel.
    ENDIF.
    IF is_new-paytype NE is_old-paytype. "Тип оплаты (закупка работником/работодателем)
      m_add_line_log 'PAYTYPE' iv_blockname is_old-paytype is_new-paytype.
    ENDIF.
    IF is_new-class_room NE is_old-class_room. "Класс номера (эконом/комфорт/люкс/президентский)
      m_add_line_log 'CLASS_ROOM' iv_blockname is_old-class_room is_new-class_room.
    ENDIF.
    IF is_new-price NE is_old-price. "Цена гостиницы
      m_add_line_log 'PRICE' iv_blockname is_old-price is_new-price.
    ENDIF.
    IF is_new-comment1 NE is_old-hoteloption. "Примечание к гостинице
      m_add_line_log 'HOTELOPTION' iv_blockname is_old-hoteloption is_new-comment1.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHECK_CHANGE_REQUSET_TYPE_INI
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_BLOCKNAME                   TYPE        STRING
* | [--->] IS_OLD                         TYPE        ZHR_UI_TRIP_CHECK_CHANGE_S
* | [--->] IS_NEW                         TYPE        ZHR_IU_TRIP_S
* | [<-->] CT_LOG                         TYPE        ZHR_TRIP_CHLOG_T
* | [<-->] CS_LOG                         TYPE        ZHRT_TRIP_CHLOG
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD check_change_requset_type_ini.
    DEFINE m_add_line_log.
      cs_log-fieldname = &1.
      cs_log-blockname = &2.
      cs_log-old_value = &3.
      cs_log-new_value = &4.
      APPEND cs_log TO ct_log.
    end-OF-DEFINITION.
    IF is_new-country_end NE is_old-country_end. "Страна
      m_add_line_log 'COUNTRY_END' iv_blockname is_old-country_end is_new-country_end.
    ENDIF.
    IF is_new-date_beg NE is_old-date_beg. "Дата приезда в место командирования
      m_add_line_log 'DATE_BEG' iv_blockname is_old-date_beg is_new-date_beg.
    ENDIF.
    IF is_new-date_end NE is_old-date_end. "Дата отъезда из места командирования
      m_add_line_log 'DATE_END' iv_blockname is_old-date_end is_new-date_end.
    ENDIF.
    IF is_new-cityfrom NE is_old-location_end. "Город для данного места командирования
      m_add_line_log 'LOCATION_BEG' iv_blockname is_old-location_end is_new-cityfrom.
    ENDIF.
    IF is_new-zzorg NE is_old-zzorg. "Организация
      m_add_line_log 'ZZORG' iv_blockname is_old-zzorg is_new-zzorg.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHECK_CHANGE_REQUSET_TYPE_OTHE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_BLOCKNAME                   TYPE        STRING
* | [--->] IS_OLD                         TYPE        ZHR_UI_TRIP_CHECK_CHANGE_S
* | [--->] IS_NEW                         TYPE        ZHR_IU_TRIP_S
* | [<-->] CT_LOG                         TYPE        ZHR_TRIP_CHLOG_T
* | [<-->] CS_LOG                         TYPE        ZHRT_TRIP_CHLOG
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD check_change_requset_type_othe.
    DEFINE m_add_line_log.
      cs_log-fieldname = &1.
      cs_log-blockname = &2.
      cs_log-old_value = &3.
      cs_log-new_value = &4.
      APPEND cs_log TO ct_log.
    end-OF-DEFINITION.
    IF is_new-cityfrom NE is_old-location_beg. "Город выезда/вылета
      m_add_line_log 'CITYFROM' iv_blockname is_old-location_beg is_new-cityfrom.
    ENDIF.
    IF is_new-cityto NE is_old-location_end. "Город назначения
      m_add_line_log 'CITYTO' iv_blockname is_old-location_end is_new-cityto.
    ENDIF.
    IF is_new-date_beg NE is_old-date_beg. "Дата выезда/вылета
      m_add_line_log 'DATE_BEG' iv_blockname is_old-date_beg is_new-date_beg.
    ENDIF.
    IF is_new-paytype NE is_old-paytype. "Тип оплаты (закупка работником/работодателем)
      m_add_line_log 'PAYTYPE' iv_blockname is_old-paytype is_new-paytype.
    ENDIF.
    IF is_new-request_type NE is_old-request_type. "Тип транспорта (авиа/авто/жд)
      m_add_line_log 'REQUEST_TYPE' iv_blockname is_old-request_type is_new-request_type.
    ENDIF.
    IF is_new-airline NE is_old-airline. "Авиакомпания
      m_add_line_log 'AIRLINE' iv_blockname is_old-airline is_new-airline.
    ENDIF.
    IF is_new-type_class NE is_old-type_class. "Класс обслуживания
      m_add_line_log 'TYPE_CLASS' iv_blockname is_old-type_class is_new-type_class.
    ENDIF.
    IF is_new-flightnumber NE is_old-flight_number. "Предпочтительный номер рейса
      m_add_line_log 'FLIGHTNUMBER' iv_blockname is_old-flight_number is_new-flightnumber.
    ENDIF.
    IF is_new-price NE is_old-price. "Цена
      m_add_line_log 'PRICE' iv_blockname is_old-price is_new-price.
    ENDIF.
    IF is_new-baggage NE is_old-baggage. "Наличие багажа
      m_add_line_log 'BAGGAGE' iv_blockname is_old-baggage is_new-baggage.
    ENDIF.
    IF is_new-transfer NE is_old-transfer. "Трансфер (автобус/такси)
      m_add_line_log 'TRANSFER' iv_blockname is_old-transfer is_new-transfer.
    ENDIF.
    IF is_new-transfer_cost NE is_old-transfer_cost. "Цена трансфера
      m_add_line_log 'TRANSFER_COST' iv_blockname is_old-transfer_cost is_new-transfer_cost.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHECK_PREGNANCY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method check_pregnancy.

    data: ls_entity    type zcl_zhr_fi_tv_req_mpc=>ts_ispregnant,
          _p0290       type table of p0290,
          lt_user_info type pernr_us_tab,
          lv_pernr     type pernr_d.

    ls_entity-flag = abap_false.

    call function 'HR_GET_EMPLOYEES_FROM_USER'
      exporting
        user   = sy-uname
*       IV_WITH_AUTHORITY       = 'X'
      tables
        ee_tab = lt_user_info.
    lv_pernr = lt_user_info[ 1 ]-pernr.
    call function 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    call function 'HR_READ_SUBTYPE'
      exporting
        pernr         = lv_pernr
        infty         = '0290'
        subty         = '101'
        begda         = sy-datum
        endda         = sy-datum
*        no_auth_check = 'X'
      tables
        infty_tab     = _p0290.
    if sy-subrc = 0.
      if _p0290 is not initial.
        ls_entity-flag = abap_true.
      else.
        call function 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
        call function 'HR_READ_SUBTYPE'
          exporting
            pernr         = lv_pernr
            infty         = '0290'
            subty         = '955'
            begda         = sy-datum
            endda         = sy-datum
*            no_auth_check = 'X'
          tables
            infty_tab     = _p0290.
        if _p0290 is not initial.
          ls_entity-flag = abap_true.
        endif.

      endif.
    endif.

    copy_data_to_ref( exporting is_data = ls_entity
                      changing cr_data = er_data ).
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHECK_SES
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD check_ses.
    DATA: lt_user_info TYPE pernr_us_tab,
          _p0105       TYPE TABLE OF p0105,
          lv_pernr     TYPE pernr_d,
          ls_entity    TYPE zcl_zhr_fi_tv_req_mpc_ext=>ts_checkses.
    CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
      EXPORTING
        user   = sy-uname
*       IV_WITH_AUTHORITY       = 'X'
      TABLES
        ee_tab = lt_user_info.
    IF lt_user_info IS INITIAL.
      ls_entity-ses = abap_false.
    ELSE.
      lv_pernr = lt_user_info[ 1 ]-pernr.
      CALL FUNCTION 'HR_READ_SUBTYPE'
        EXPORTING
          pernr         = lv_pernr
          infty         = '0105'
          subty         = '9009'
          no_auth_check = abap_true
          begda         = sy-datum
          endda         = sy-datum
        TABLES
          infty_tab     = _p0105.
      IF _p0105 IS NOT INITIAL.
        ls_entity-ses = abap_true.
      ELSE.
        ls_entity-ses = abap_false.
      ENDIF.
    ENDIF.
    copy_data_to_ref( EXPORTING is_data = ls_entity
                      CHANGING cr_data = er_data ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT=>CHECK_TOP_MAN
* +-------------------------------------------------------------------------------------------------+
* | [--->] IM_UNAME                       TYPE        UNAME
* | [--->] IM_PERNR                       TYPE        PERSNO(optional)
* | [<-()] FLAG_TOP                       TYPE        FLAG
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD check_top_man.
    DATA: l_pernr   TYPE persno,
          ls_lead   TYPE zhr_objbif_objec_leader_s,
          _bipernr  TYPE REF TO zcl_objbif_pernr,
          _biplans  TYPE REF TO zhr_objbif_plans,
          it_attrib TYPE TABLE OF pt1222.
    IF im_pernr IS SUPPLIED.
      l_pernr = im_pernr.
    ELSE.
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
        EXPORTING
          user_name               = im_uname
        IMPORTING
          employeenumber          = l_pernr
        EXCEPTIONS
          no_employeenumber_found = 1
          subtype_not_available   = 2
          OTHERS                  = 3.
    ENDIF.
    CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
      EXPORTING
        otype  = c_otype_p
        objid  = l_pernr
        datum  = sy-datum
      CHANGING
        result = _bipernr
      EXCEPTIONS
        OTHERS = 4.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    TRY.
        _bipernr->zhr_objbif_pernr~get_orgass(
        EXPORTING
          adatum = sy-datum
          IMPORTING
            resplans = _biplans
        ).
        CLEAR: it_attrib[].
        CHECK _biplans IS NOT INITIAL.
        CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
        CALL FUNCTION 'RH_OM_ATTRIBUTES_READ'
          EXPORTING
            plvar            = '01'
            otype            = 'S'
            objid            = _biplans->objec-objid
            seldate          = sy-datum
          TABLES
            attrib           = it_attrib
          EXCEPTIONS
            no_active_plvar  = 1
            no_attributes    = 2
            no_values        = 3
            object_not_found = 4
            OTHERS           = 5.
        READ TABLE it_attrib ASSIGNING FIELD-SYMBOL(<attr>) WITH KEY attrib = 'ZTOPMGR'.
        CHECK sy-subrc EQ 0.
        IF <attr>-low IS NOT INITIAL.
          flag_top = abap_true.
        ENDIF.
      CATCH zcx_objbif_objec.
    ENDTRY.

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CHECK_WEEKEND
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method check_weekend.
    data(lt_parameters) = io_tech_request_context->get_parameters( ).
    data: lt_dayattr type table of casdayattr,
          lv_datbg   type timestamp,
          lv_daten   type dats,
          ls_entity  type zcl_zhr_fi_tv_req_mpc_ext=>ts_hasweekend.
    constants l_wfcid type wfcid value 'RU'.
    lv_datbg = value #( lt_parameters[ name = 'DATBG' ]-value optional ).
    lv_daten = lt_parameters[ name = 'DATEN' ]-value.

    data: lv_date_beg type dats,
          lv_date_end type dats,
              lv_time type tims,
              lv_ts   type timestamp.

    cl_abap_tstmp=>systemtstmp_utc2syst(
              exporting utc_tstmp = lv_datbg
                importing syst_date = lv_date_beg
                  syst_time = lv_time ).
*
*            convert TIME STAMP <trips>-date_time_beg time zone sy-zonlo
*              into date lv_date time lv_time.

*    cl_abap_tstmp=>systemtstmp_utc2syst(
*              exporting utc_tstmp = lv_daten
*                importing syst_date = lv_date_end
*                  syst_time = lv_time ).

    call function 'DAY_ATTRIBUTES_GET'
      exporting
        factory_calendar           = l_wfcid
        holiday_calendar           = l_wfcid
        date_from                  = lv_date_beg
        date_to                    = lv_daten
*       LANGUAGE                   = SY-LANGU
*       NON_ISO                    = ' '
*     IMPORTING
*       YEAR_OF_VALID_FROM         =
*       YEAR_OF_VALID_TO           =
*       RETURNCODE                 =
      tables
        day_attributes             = lt_dayattr
      exceptions
        factory_calendar_not_found = 1
        holiday_calendar_not_found = 2
        date_has_invalid_format    = 3
        date_inconsistency         = 4
        others                     = 5.
    if sy-subrc <> 0.
* Implement suitable error handling here
    endif.

    loop at lt_dayattr assigning field-symbol(<beg>). " with key date = lv_daten.
      if <beg> is assigned.
        if <beg>-freeday eq abap_true or <beg>-holiday eq abap_true.
          ls_entity-flag = abap_true.
        endif.
*        unassign <beg>.
      endif.
    endloop.
    copy_data_to_ref( exporting is_data = ls_entity
                          changing cr_data = er_data ).
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CITYFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_CITYFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD cityfilterset_get_entityset.

  DATA lv_appid TYPE string.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_appid) = VALUE #( lt_filter[ property = 'APPID' ]-select_options OPTIONAL ).
  lv_appid = VALUE #( lr_appid[ 1 ]-low OPTIONAL ).
  CHECK lv_appid = 'ZHR_FI_TV_AVA'.

  SELECT DISTINCT location_end AS name
    INTO TABLE et_entityset
    FROM ftpt_req_head
   INNER JOIN zhrt_ui_trip
      ON zhrt_ui_trip~reinr = ftpt_req_head~reinr
   WHERE zhrt_ui_trip~status_1 = '5'.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CITYSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_CITY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD cityset_get_entityset.

**Get filter
  DATA: lv_city TYPE pad_ort01.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_name) = VALUE #( lt_filter[ property = 'NAME' ]-select_options OPTIONAL ).
*  LOOP AT lr_name ASSIGNING FIELD-SYMBOL(<name>).
*    APPEND VALUE #( sign = 'I' option = 'EQ' low = <name>-low ) TO lr_city ASSIGNING FIELD-SYMBOL(<city>).
*    TRANSLATE <city>-low TO LOWER CASE.
*    TRANSLATE <city>-low+0(1) TO UPPER CASE.
*  ENDLOOP.
  lv_city = VALUE #( lr_name[ 1 ]-low OPTIONAL ).
  TRANSLATE lv_city TO LOWER CASE.
  TRANSLATE lv_city+1(1) TO UPPER CASE.
  APPEND VALUE #( sign = 'I' option = 'CP' low = lv_city ) TO lr_name.
*  APPEND VALUE #( sign = 'I' option = 'EQ' low = '*' ) TO lr_name.

  DATA: lt_cities    TYPE STANDARD TABLE OF zcl_zhr_fi_tv_req_mpc=>ts_city,
        ls_city      LIKE LINE OF lt_cities,
        lr_range_del TYPE RANGE OF tvarvc-low,
        lv_code      TYPE zcl_zhr_fi_tv_req_mpc=>ts_city-code.


  SELECT DISTINCT
          cities~citycode  AS code,
          cities~formalname AS name,
          cities~countrycode AS countrycode,
          cities~regioncode AS regioncode,
          cities~region AS region,
          cities~areacode AS areacode,
          cities~county AS area,
          cities~shortname AS type
  FROM zthr_ui_cities AS cities
  WHERE cities~formalname IN @lr_name
  ORDER BY  type , name
    INTO TABLE @lt_cities UP TO 999 ROWS.

  LOOP AT lt_cities ASSIGNING FIELD-SYMBOL(<fs_cities>).
    <fs_cities>-code = lv_code = lv_code + 1.
  ENDLOOP.

  et_entityset = CORRESPONDING #( lt_cities ).

***Get filter
*  DATA: lv_city TYPE pad_ort01.
*  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
*  DATA(lr_name) = VALUE #( lt_filter[ property = 'NAME' ]-select_options OPTIONAL ).
**  LOOP AT lr_name ASSIGNING FIELD-SYMBOL(<name>).
**    APPEND VALUE #( sign = 'I' option = 'EQ' low = <name>-low ) TO lr_city ASSIGNING FIELD-SYMBOL(<city>).
**    TRANSLATE <city>-low TO LOWER CASE.
**    TRANSLATE <city>-low+0(1) TO UPPER CASE.
**  ENDLOOP.
*  lv_city = VALUE #( lr_name[ 1 ]-low OPTIONAL ).
*  TRANSLATE lv_city TO LOWER CASE.
*  TRANSLATE lv_city+1(1) TO UPPER CASE.
*  APPEND VALUE #( sign = 'I' option = 'CP' low = lv_city ) TO lr_name.
*  APPEND VALUE #( sign = 'I' option = 'EQ' low = '*' ) TO lr_name.
*
*  DATA: lt_cities TYPE STANDARD TABLE OF zcl_zhr_fi_tv_req_mpc=>ts_city,
*        ls_city   LIKE LINE OF lt_cities.
*
*  SELECT  t7ruaa~ort01 AS name,
*          MAX( t7ruaa~crt01 ) AS code,
*          t7ruaa~land1 AS countrycode,
*          t7ruaa~state AS regioncode,
*          MAX( t7ruregiont~bezei ) AS region,
*          t7ruaa~counc AS areacode,
*          MAX( t7rucountyt~bezei ) AS area,
*          t7ruaa~srt01 AS type
*  FROM t7ruaa
*    LEFT JOIN t7rucountyt ON t7rucountyt~counc = t7ruaa~counc AND t7rucountyt~regio = t7ruaa~state
*    LEFT JOIN t7ruregiont ON t7ruregiont~bland = t7ruaa~state
*  WHERE t7ruaa~ort01 IN @lr_name
*  GROUP BY t7ruaa~ort01, t7ruaa~land1, t7ruaa~state, t7ruaa~counc, t7ruaa~srt01
**  ORDER BY name, regioncode, areacode
*  ORDER BY  type , name
*  INTO CORRESPONDING FIELDS OF TABLE @lt_cities.
*
*  ls_city-name = 'Москва'.
*  ls_city-code = '00077'.
*  ls_city-regioncode = '77'.
*  ls_city-region = 'Москва'.
*  ls_city-areacode = '000'.
*  ls_city-countrycode = 'RU'.
*  ls_city-type = 'г'.
*  APPEND ls_city TO lt_cities.
*
*  ls_city-name = 'Санкт-Петербург'.
*  ls_city-code = '00078'.
*  ls_city-regioncode = '78'.
*  ls_city-region = 'Санкт-Петербург'.
*  ls_city-areacode = '000'.
*  ls_city-countrycode = 'RU'.
*  ls_city-type = 'г'.
*  APPEND ls_city TO lt_cities.
*
*  ls_city-name = 'Севастополь'.
*  ls_city-code = '00092'.
*  ls_city-regioncode = '92'.
*  ls_city-region = 'Севастополь'.
*  ls_city-areacode = '000'.
*  ls_city-countrycode = 'RU'.
*  ls_city-type = 'г'.
*  APPEND ls_city TO lt_cities.
*
*  ls_city-name = 'Байконур'.
*  ls_city-code = '00099'.
*  ls_city-regioncode = '99'.
*  ls_city-region = 'Байконур'.
*  ls_city-areacode = '000'.
*  ls_city-countrycode = 'RU'.
*  ls_city-type = 'г'.
*  APPEND ls_city TO lt_cities.
*
**  if lr_name is not initial.
*  DELETE lt_cities WHERE name NOT IN lr_name.
**  endif.
*  et_entityset = CORRESPONDING #( lt_cities ).
**  CONSTANTS c_city_shlpname TYPE shlpname VALUE 'HRPADRU_KLADR_CITY'.
**
**  DATA: ls_shlp   TYPE shlp_descr,
**        lt_return TYPE TABLE OF ddshretval.
**
**  DATA(lt_filter_selopt) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
**
**  CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
**    EXPORTING
**      shlpname = c_city_shlpname
**    IMPORTING
**      shlp     = ls_shlp.
**
**  fill_shlp_selopt(
**    EXPORTING
**      it_filter_selopt = lt_filter_selopt
**      iv_property      = 'COUNTRYCODE'
**      iv_shlpname      = c_city_shlpname
**      iv_shlpfield     = 'KLAND1'
**    CHANGING
**      ct_shlp_selopt   = ls_shlp-selopt ).
**
**  fill_shlp_selopt(
**    EXPORTING
**      it_filter_selopt = lt_filter_selopt
**      iv_property      = 'REGIONCODE'
**      iv_shlpname      = c_city_shlpname
**      iv_shlpfield     = 'KREGIO'
**    CHANGING
**      ct_shlp_selopt   = ls_shlp-selopt ).
**
**  fill_shlp_selopt(
**    EXPORTING
**      it_filter_selopt = lt_filter_selopt
**      iv_property      = 'NAME'
**      iv_shlpname      = c_city_shlpname
**      iv_shlpfield     = 'KNAME_CITY'
**    CHANGING
**      ct_shlp_selopt   = ls_shlp-selopt ).
**
**  CALL FUNCTION 'F4IF_SELECT_VALUES'
**    EXPORTING
**      shlp           = ls_shlp
***     SORT           = ' '
**      call_shlp_exit = abap_true
**    TABLES
**      return_tab     = lt_return.
**
**  LOOP AT lt_return ASSIGNING FIELD-SYMBOL(<ls_return>) GROUP BY ( key = <ls_return>-recordpos ).
**    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ls_entity>).
**    <ls_entity>-countrycode = VALUE #( lt_filter_selopt[ property = 'COUNTRYCODE' ]-select_options[ 1 ]-low OPTIONAL ).
**    <ls_entity>-regioncode  = VALUE #( lt_filter_selopt[ property = 'REGIONCODE' ]-select_options[ 1 ]-low OPTIONAL ).
**    <ls_entity>-areacode    = VALUE #( lt_filter_selopt[ property = 'AREACODE' ]-select_options[ 1 ]-low OPTIONAL ).
**
**    LOOP AT GROUP <ls_return> ASSIGNING FIELD-SYMBOL(<ls_member>).
**      CASE <ls_member>-fieldname.
**        WHEN 'KCODE'.
**          <ls_entity>-code = <ls_member>-fieldval.
**        WHEN 'KSOCR_CITY'.
**          <ls_entity>-name = <ls_member>-fieldval.
***        WHEN 'KNAME_CITY'.
***          <ls_entity>-formalname = <ls_member>-fieldval.
**        WHEN OTHERS.
**          CONTINUE.
**      ENDCASE.
**    ENDLOOP.
**  ENDLOOP.
***  SORT et_entityset BY formalname ASCENDING.
**  SORT et_entityset BY name ASCENDING.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CLASSGKSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_CLASSGK
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD classgkset_get_entityset.
    DATA: lt_return_tab TYPE TABLE OF ddshretval,
          ls_shlp       TYPE  shlp_descr,
          l_kztkt       TYPE kztkt,
          l_tktxt       TYPE text_kztkt.
    CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
      EXPORTING
        shlpname = 'H_T702R'
      IMPORTING
        shlp     = ls_shlp.
    APPEND VALUE #( shlpfield = 'MOREI' sign = 'I' option = 'EQ' low = '33' ) TO ls_shlp-selopt.
    CALL FUNCTION 'F4IF_SELECT_VALUES'
      EXPORTING
        shlp           = ls_shlp
        call_shlp_exit = 'X'
      TABLES
        return_tab     = lt_return_tab.
    LOOP AT lt_return_tab ASSIGNING FIELD-SYMBOL(<ret1>) GROUP BY ( key = <ret1>-recordpos ).
      LOOP AT GROUP <ret1> ASSIGNING FIELD-SYMBOL(<ret2>).
        CHECK l_kztkt IS INITIAL OR l_tktxt IS INITIAL.
        CASE <ret2>-fieldname.
          WHEN 'KZTKT'.
            l_kztkt = <ret2>-fieldval.
          WHEN 'TKTXT'.
            l_tktxt = <ret2>-fieldval.
          WHEN OTHERS.
        ENDCASE.
      ENDLOOP.
      APPEND VALUE #( kztkt = l_kztkt tktxt = l_tktxt ) TO et_entityset.
      CLEAR: l_kztkt, l_tktxt.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->COUNTRYSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_COUNTRY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD countryset_get_entityset.

  CONSTANTS: lc_morei TYPE morei VALUE '33'.
  SELECT t005~land1 AS code,
         t005t~landx AS name
    FROM t702o
LEFT JOIN t005 ON t005~land1 = t702o~land1
INNER JOIN t005t ON t702o~land1 = t005t~land1
INTO TABLE @et_entityset
   WHERE t005t~spras = @sy-langu
     AND t005~land1 NOT IN ('GG', 'IM', 'SU')
     AND t702o~morei = @lc_morei.
  SORT et_entityset BY code.
  DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING code.
  SORT et_entityset BY name.

  INSERT INITIAL LINE INTO et_entityset ASSIGNING FIELD-SYMBOL(<p_ent>) INDEX 1.
  CHECK sy-subrc = 0.
  <p_ent>-code = 'XX'.
  <p_ent>-name = 'Зарубежные'.

  READ TABLE et_entityset INTO data(ls_entityset) WITH KEY code = 'RU'.
  IF sy-subrc = 0.
    DELETE et_entityset WHERE code = 'RU'.
    INSERT ls_entityset INTO et_entityset INDEX 1.
  ENDIF.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CREATE_ZPL
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_PERNR                       TYPE        PERSNO
* | [--->] IV_REINR                       TYPE        REINR
* | [<---] EV_MESSAGE                     TYPE        ZHRE_UI_TRIP_ZPL_MESSAGE
* | [<---] EV_EBELN                       TYPE        EBELN
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD create_zpl.
    DATA: lt_p0001        TYPE TABLE OF p0001,
          lt_p0017        TYPE TABLE OF p0017,
          lt_p0298        TYPE TABLE OF p0298,
          lt_p1222        TYPE TABLE OF p1222,
          lt_userdata     TYPE ptrv_bapi_t_userdata,
          lv_fistl        TYPE ptp02-zzfistl,
          lv_summ         TYPE netwr,
          lv_zzsgtxt      TYPE sgtxt,
          lv_message(160) TYPE c,
          ls_framedata    TYPE zstv_eksh_framedata.
    SELECT SINGLE contn INTO @DATA(l_rfc_conn_rnp) FROM t7rurptcst00 WHERE progr = 'Z_FIORI_FI_TV'.
    SELECT SINGLE * FROM ptrv_perio INTO @DATA(ls_perio) WHERE pernr = @iv_pernr AND reinr = @iv_reinr.
    m_read_inf iv_pernr '0001' lt_p0001.
    m_read_inf iv_pernr '0017' lt_p0017.
    DATA(ls_p0001) = VALUE #( lt_p0001[ 1 ] OPTIONAL ).
    m_read_inf_for_date iv_pernr '0298' ls_perio-pdatv ls_perio-pdatv lt_p0298.
    lv_zzsgtxt = |{ VALUE #( lt_p0298[ 1 ]-ordnu OPTIONAL ) }{ VALUE #( lt_p0298[ 1 ]-orddt OPTIONAL ) }|.

    CALL FUNCTION 'Z_FITV_FISTL_GET'
      EXPORTING
        comp_code      = ls_p0001-bukrs
        costcenter     = ls_p0001-kostl
        employeenumber = iv_pernr
        dep_date       = ls_perio-pdatv
      IMPORTING
        funds_ctr      = lv_fistl.

    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = iv_pernr
        tripnumber     = iv_reinr
      IMPORTING
        framedata      = ls_framedata
      TABLES
        userdata       = lt_userdata.

    LOOP AT lt_userdata ASSIGNING FIELD-SYMBOL(<ud>) WHERE zzexpty = '1' OR zzspkzl = 'VERP'.
      lv_summ = lv_summ + <ud>-zzwrbtr.
      DATA(lv_waers) = <ud>-zzwaers.
    ENDLOOP.

    CHECK lv_summ IS NOT INITIAL.
    TRY.
        CALL FUNCTION 'ZFM_PLR_RFC_CREATE_ZPL_Z735'
          DESTINATION l_rfc_conn_rnp
          EXPORTING
            iv_bukrs   = ls_p0001-bukrs
            iv_fistl   = lv_fistl
            iv_waers   = lv_waers
            iv_summ    = lv_summ
            iv_zzsgtxt = lv_zzsgtxt
            iv_reinr   = iv_reinr
            iv_pernr   = iv_pernr
          IMPORTING
            ev_ebeln   = ev_ebeln
            ev_message = ev_message.
      CATCH cx_root.
    ENDTRY.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->CREATE_ZPL_ERROR
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_PERNR                       TYPE        PERSNO
* | [--->] IV_REINR                       TYPE        REINR
* | [--->] IV_MESSAGE                     TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD create_zpl_error.
    DATA: BEGIN OF ls_send,
            pernr   TYPE persno,
            reinr   TYPE reinr,
            message TYPE string,
            emp     TYPE string,
            url     TYPE string,
          END OF ls_send,
          l_sendler      TYPE adr6-smtp_addr,
          lt_p0002       TYPE TABLE OF p0002,
          ls_p0002       TYPE p0002,
          lt_p0105       TYPE TABLE OF p0105,
          rt_html        TYPE soli_tab,
          lv_xmlstr      TYPE string,
          lv_subj        TYPE string,
          lv_rec         TYPE adr6-smtp_addr,
          lv_application TYPE string,
          lv_url         TYPE string,
          lt_mail_user   TYPE TABLE OF ad_smtpadr,
          lt_mail        LIKE lt_mail_user,
          l_email        TYPE p0105-usrid_long.
    CONSTANTS: c_url     TYPE string VALUE '/sap/bc/ui5_ui5/ui2/ushell/shells/abap/Fiorilaunchpad.html',
               c_url_app TYPE string VALUE '#ZHR_FI_TV_REQ1-display&/RequestSet/',
               c_email   TYPE subty VALUE '0010'.
    IF sy-sysid EQ 'HR2'.
      lv_rec = 'SAP_Support@rosneft.ru'.
    ELSE.
      lv_rec = 'TikhonovGI@sibintek.ru'.
    ENDIF.
    CHECK sy-sysid EQ 'HR2'.
    TRANSLATE lv_rec TO UPPER CASE.
    lv_subj = |Ошибки создания ЗПЛ в командировке { iv_reinr }|.
    m_read_inf iv_pernr '0002' lt_p0002.
    ls_p0002 = VALUE #( lt_p0002[ 1 ] OPTIONAL ).
    ls_send-pernr = iv_pernr.
    ls_send-reinr = iv_reinr.
    ls_send-message = iv_message.
    ls_send-emp = |{ ls_p0002-nachn } { ls_p0002-vorna } { ls_p0002-midnm }|.
* Отправитель
    l_sendler = TEXT-001.
* ОТПРАВКА НА SAP_SUPPORT********************************************************
    CALL TRANSFORMATION zhr_ui_trip_zpl_err_support
                 SOURCE root = ls_send
                 RESULT XML lv_xmlstr.
    lv_xmlstr = lv_xmlstr+40.
    CALL FUNCTION 'ZHR_SLPIT_STRING'
      EXPORTING
        string        = lv_xmlstr
        length        = 250
        use_separator = '#'
      TABLES
        split         = rt_html.

    TRY.
        DATA(lo_send_request) = cl_bcs=>create_persistent( ).
* Создание письма
        lo_send_request->set_document(
                          cl_document_bcs=>create_document(
                            i_type    = 'HTM'
                            i_subject = ''
                            i_text    = rt_html
                          )
                        ).
        lo_send_request->set_sender( i_sender = cl_cam_address_bcs=>create_internet_address( i_address_string = l_sendler ) ).
* Задаем тему письма
        lo_send_request->set_message_subject( lv_subj ).
* Добавляем получателей
        lo_send_request->add_recipient( i_recipient = cl_cam_address_bcs=>create_internet_address( i_address_string = lv_rec ) ).
* Отправка
        lo_send_request->send( ).
      CATCH cx_root INTO DATA(lo_error).
*        MESSAGE e000(00) WITH lo_error->get_text( ) INTO DATA(lv_dummy).
    ENDTRY.
***********************************************************************************
* ОТПРАВКА PAБОТНИКУ***************************************************************
    CLEAR: lo_send_request, lv_xmlstr, rt_html[].
    m_read_inf iv_pernr '0105' lt_p0105.
    DELETE lt_p0105 WHERE subty NE c_email.
    LOOP AT lt_p0105 ASSIGNING FIELD-SYMBOL(<p0105>).
      IF <p0105>-usrid IS NOT INITIAL.
        l_email = <p0105>-usrid.
      ELSEIF <p0105>-usrid_long IS NOT INITIAL.
        l_email = <p0105>-usrid_long.
      ENDIF.
      REFRESH lt_mail.
      SPLIT <p0105>-usrid_long AT ';' INTO TABLE lt_mail.
      LOOP AT lt_mail ASSIGNING FIELD-SYMBOL(<mail>).
        CONDENSE <mail> NO-GAPS.
      ENDLOOP.
      APPEND LINES OF lt_mail TO lt_mail_user.
    ENDLOOP.
* Формируем ссылку на заявку
    cl_http_server=>if_http_server~get_location(
      EXPORTING
        application  = /ui2/if_start_url=>co_flp
      IMPORTING
        host         = DATA(lv_host)
        port         = DATA(lv_port)
        out_protocol = DATA(lv_protocol) ).
    ls_send-url = |{ lv_protocol }://{ lv_host }:{ lv_port }{ c_url }|.
    TRANSLATE ls_send-url TO LOWER CASE.
    ls_send-url = |{ ls_send-url }{ c_url_app }{ iv_reinr }/{ iv_pernr }/general|.

    CALL TRANSFORMATION zhr_ui_trip_zpl_err_employer
                 SOURCE root = ls_send
                 RESULT XML lv_xmlstr.
    lv_xmlstr = lv_xmlstr+40.
    CALL FUNCTION 'ZHR_SLPIT_STRING'
      EXPORTING
        string        = lv_xmlstr
        length        = 250
        use_separator = '#'
      TABLES
        split         = rt_html.
* Отправка
    TRY.
        lo_send_request = cl_bcs=>create_persistent( ).
* Создание письма
        lo_send_request->set_document(
                          cl_document_bcs=>create_document(
                            i_type    = 'HTM'
                            i_subject = ''
                            i_text    = rt_html
                          )
                        ).
* Отправитель
        lo_send_request->set_sender( i_sender = cl_cam_address_bcs=>create_internet_address( i_address_string = l_sendler ) ).
* Задаем тему письма
        lo_send_request->set_message_subject( lv_subj ).
* Добавляем получателей
        LOOP AT lt_mail_user ASSIGNING <mail>.
          lo_send_request->add_recipient( i_recipient = cl_cam_address_bcs=>create_internet_address( i_address_string = <mail> ) ).
        ENDLOOP.
* Отправка
        lo_send_request->send( ).
      CATCH cx_root INTO lo_error.
*        MESSAGE e000(00) WITH lo_error->get_text( ) INTO DATA(lv_dummy).
    ENDTRY.
***********************************************************************************
    COMMIT WORK AND WAIT.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->DELEGSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_DELEG
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD delegset_get_entityset.
    DATA: _bipernr TYPE REF TO zhr_objbif_pernr,
          l_pernr  TYPE persno,
          lt_deleg TYPE TABLE OF hrus_d2.
    CONSTANTS: c_rep TYPE hrus_d2-reppr VALUE 'ZREQ'.
    SELECT * FROM hrus_d2
            INTO TABLE lt_deleg
            WHERE rep_name = sy-uname
              AND begda <= sy-datum
              AND endda >= sy-datum
              AND reppr = c_rep
              AND active = abap_true
             .
    LOOP AT lt_deleg ASSIGNING FIELD-SYMBOL(<deleg>).
      APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      <entity>-uname = <deleg>-us_name.
      CLEAR l_pernr.
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
        EXPORTING
          user_name               = CONV uname( <entity>-uname )
        IMPORTING
          employeenumber          = l_pernr
        EXCEPTIONS
          no_employeenumber_found = 1
          subtype_not_available   = 2
          OTHERS                  = 3.
      CLEAR _bipernr.
      m_get_objec c_otype_p l_pernr _bipernr.
      IF _bipernr IS NOT INITIAL.
        <entity>-fio = _bipernr->get_name( adatum = sy-datum anoauth = abap_true ).
      ENDIF.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->EMPLOYEESSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_EMPLOYEES
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD employeesset_get_entityset.
  "Get filter
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_fio) = VALUE #( lt_filter[ property = 'FIO' ]-select_options OPTIONAL ).
*  APPEND VALUE #( sign = 'I' option = 'EQ' low = '*' ) TO lr_fio.
*
  DATA(lr_pernr) = VALUE #( lt_filter[ property = 'PERNR' ]-select_options OPTIONAL ).
*  APPEND VALUE #( sign = 'I' option = 'EQ' low = '*' ) TO lr_fio.

  IF sy-sysid = 'HR3'.
    DATA(lv_role_tri) = c_test_role_trip.
  ELSE.
    lv_role_tri = c_role_trip.
  ENDIF.

*  SELECT SINGLE agr_name
*    INTO @lv_temp
*    FROM agr_users
*   WHERE uname = @sy-uname
*     AND from_dat <= @sy-datum
*     AND to_dat >= @sy-datum
*     AND agr_name LIKE @lv_role_tri.

  IF lr_fio[] IS INITIAL.
    DATA ls_line LIKE LINE OF et_entityset.
    SELECT SINGLE pernr, nachn && @space && vorna && @space && midnm AS fio
    FROM pa0002
    WHERE pernr IN @lr_pernr AND begda <= @sy-datum AND endda >= @sy-datum
      INTO @ls_line.
    APPEND ls_line TO et_entityset.
  ELSE.
    SELECT pernr, nachn && @space && vorna && @space && midnm AS fio
    FROM pa0002
    WHERE
       nachn  IN @lr_fio AND endda >= @sy-datum
      OR
       vorna IN @lr_fio AND endda >= @sy-datum
      OR
       replace( concat( concat( nachn, '$ $' ), vorna ), '$', @space ) IN @lr_fio
      AND endda >= @sy-datum
      AND
       pernr IN @lr_pernr AND endda >= @sy-datum
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
  ENDIF.
  LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<ent>).
    CALL FUNCTION 'RH_AUTHORITY_CHECK_FROM_ADMIN'
      EXPORTING
        pernr  = CONV persno( <ent>-pernr )
        begda  = sy-datum
        endda  = sy-datum
        maint  = abap_true
        uname  = sy-uname
      EXCEPTIONS
        OTHERS = 2.
    IF sy-subrc NE 0.
      DELETE TABLE et_entityset FROM <ent>.
      CONTINUE.
    ENDIF.
  ENDLOOP.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->ESTIMATESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_ESTIMATE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD estimateset_get_entityset.
    DATA: lv_pernr    TYPE persno,
          lv_reinr    TYPE zehr_reinr,
          lt_userdata TYPE ptrv_bapi_t_userdata,
          lt_advances TYPE TABLE OF zstv_eksh_advances,
          lv_str      TYPE char20,
          lv_s1       TYPE i,
          lv_s2       TYPE i,
          lv_status   TYPE zetv_eksh_zplst.

    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    TRY.
        lv_reinr = lt_keys[ name = 'REINR' ]-value.
        lv_pernr = lt_keys[ name = 'PERNR' ]-value.
      CATCH cx_root.
    ENDTRY.
    SELECT SINGLE adv_payment FROM zhrt_ui_trip WHERE reinr = @lv_reinr AND pernr = @lv_pernr INTO @DATA(lv_adv).
    SELECT * FROM t706b5 WHERE spras = 'R' AND morei = '33' INTO TABLE @DATA(lt_text).

    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = lv_pernr
        tripnumber     = lv_reinr
      TABLES
        advances       = lt_advances
        userdata       = lt_userdata.
    lv_status = VALUE #( lt_advances[ 1 ]-zzzplst OPTIONAL ).
    LOOP AT lt_userdata ASSIGNING FIELD-SYMBOL(<ud>).
      APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ent>).
      MOVE-CORRESPONDING <ud> TO <ent>.
      <ent>-sptxt = VALUE #( lt_text[ spkzl = <ud>-zzspkzl ]-sptxt OPTIONAL ).

      lv_str = <ud>-zzmenge.
      CONDENSE lv_str.
      IF lv_str CS '.'.
        DATA(l_pos) = sy-fdpos.
        <ent>-zzmenge = lv_str+0(l_pos).
      ENDIF.

      lv_str = <ud>-zzpreis.
      CONDENSE lv_str.
      IF lv_str CS '.'.
        l_pos = sy-fdpos.
        <ent>-zzpreis = lv_str+0(l_pos).
      ENDIF.

      lv_str = <ud>-zzwrbtr.
      CONDENSE lv_str.
      IF lv_str CS '.'.
        l_pos = sy-fdpos.
        <ent>-zzwrbtr = lv_str+0(l_pos).
      ENDIF.

      IF ( <ud>-zzexpty EQ '1' OR <ud>-zzspkzl eq 'VERP' ) AND lv_adv EQ abap_true.
        lv_str = <ud>-zzdmbtr.
        CONDENSE lv_str.
        IF lv_str CS '.'.
          l_pos = sy-fdpos.
          <ent>-zzdmbtr = lv_str+0(l_pos).
        ENDIF.
      ELSE.
        CLEAR <ent>-zzdmbtr.
      ENDIF.
    ENDLOOP.

    LOOP AT et_entityset ASSIGNING <ent>.
      lv_s1 = lv_s1 + <ent>-zzwrbtr.
      lv_s2 = lv_s2 + <ent>-zzdmbtr.
    ENDLOOP.

    APPEND INITIAL LINE TO et_entityset ASSIGNING <ent>.
    <ent>-sptxt = 'Итог, в т.ч.'.
    <ent>-zzwrbtr = lv_s1.
    <ent>-zzdmbtr = lv_s2.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->EXPENSESSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_EXPENSES
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method expensesset_get_entityset.
*  DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
*  TRY.
*    DATA(l_reinr) = lt_keys[ name = 'REINR' ]-value.
*    CATCH cx_root.
*  ENDTRY.

*  SELECT  ptrv_srec~receiptno AS receiptno,
*          ptrv_srec~reinr AS reinr,
*          ptrv_srec~pernr AS pernr,
*          ptrv_srec~rec_amount AS price,
*          ptrv_srec~rec_rate AS amount,
*          ptrv_srec~loc_amount AS totalprice,
*          MAX( sh_t706b1~sptxt ) AS type
*  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
*  FROM ptrv_srec
*    INNER JOIN sh_t706b1 ON ptrv_srec~exp_type = sh_t706b1~spkzl
*  WHERE ptrv_srec~reinr = @l_reinr
*    AND sh_t706b1~spras = @sy-langu
*    GROUP BY ptrv_srec~receiptno, ptrv_srec~reinr, ptrv_srec~pernr, ptrv_srec~rec_amount, ptrv_srec~rec_rate, ptrv_srec~loc_amount.

  select   T706B5~spkzl as code,
           T706B5~sptxt as name
    into corresponding fields of table @et_entityset
    from  T706B5
    where T706B5~spras = 'R' and T706B5~morei = '33'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->EXPTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_EXPTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD exptypeset_get_entityset.
    SELECT b1~spkzl, b1~mwskz, b5~sptxt, b1~nbkkl
      FROM t706b1 AS b1
 LEFT JOIN t706b5 AS b5 ON b1~morei = b5~morei AND b1~spkzl = b5~spkzl
      INTO TABLE @DATA(lt_res)
     WHERE b1~morei = '33'
       AND b5~spras = @sy-langu.
    DELETE lt_res WHERE nbkkl IS INITIAL AND spkzl NE 'VERP'.
    et_entityset = CORRESPONDING #( lt_res ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->FILESET_DELETE_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY_D(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD fileset_delete_entity.
  DATA(lv_reinr) = VALUE #( it_key_tab[ name = 'Reinr' ]-value OPTIONAL ).
  DATA(lv_filename) = VALUE #( it_key_tab[ name = 'Filename' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_fi_tv_file
    INTO @DATA(ls_file)
      WHERE reinr = @lv_reinr
        AND filename = @lv_filename.
  IF sy-subrc = 0
    AND ls_file-file_id IS NOT INITIAL.

    CALL FUNCTION 'SCMS_HTTP_DELETE'
      EXPORTING
        crep_id               = get_repository( )
        doc_id                = ls_file-file_id
        comp_id               = 'request'
      EXCEPTIONS
        bad_request           = 1
        unauthorized          = 2
        not_found             = 3
        conflict              = 4
        internal_server_error = 5
        error_http            = 6
        error_url             = 7
        error_signature       = 8
        OTHERS                = 9.

    IF sy-subrc = 0.
      DELETE zhrt_fi_tv_file FROM ls_file.
    ELSE.
      RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
        EXPORTING
          textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                            msgno = 021 ).
    ENDIF.
  ELSE.
    RAISE EXCEPTION TYPE /iwbep/cx_mgw_tech_exception
      EXPORTING
        textid = VALUE #( msgid = 'ZHR_UI5_REQUEST'
                          msgno = 020 ).
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->FILESET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TS_FILE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD fileset_get_entity.
  DATA: ls_file   TYPE zcl_zhr_fi_tv_req_mpc=>ts_file,
        lv_length TYPE i,
        lt_binary TYPE TABLE OF x.

  DATA(lv_reinr) = VALUE #( it_key_tab[ name = 'Reinr' ]-value OPTIONAL ).
  DATA(lv_filename) = VALUE #( it_key_tab[ name = 'Filename' ]-value OPTIONAL ).

  SELECT SINGLE *
    FROM zhrt_fi_tv_file
    INTO CORRESPONDING FIELDS OF @ls_file
      WHERE reinr = @lv_reinr
        AND filename = @lv_filename.
  CHECK sy-subrc = 0.

  CALL FUNCTION 'SCMS_URL_GENERATE'
    EXPORTING
      command      = 'get'
      contrep      = get_repository( )
      docid        = ls_file-file_id
      compid       = 'request'
    IMPORTING
      absolute_uri = ls_file-uri
    EXCEPTIONS
      OTHERS       = 1.

  MOVE-CORRESPONDING ls_file TO er_entity.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->FILESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_FILE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD fileset_get_entityset.
  DATA: lt_file   type zcl_zhr_fi_tv_req_mpc=>tt_file,
        lv_length TYPE i,
        lt_binary TYPE TABLE OF x.

  DATA(lv_reinr) = VALUE #( it_key_tab[ name = 'Reinr' ]-value OPTIONAL ).
  data(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  data(lr_type) = value #( lt_filter[ property = 'TYPE' ]-select_options optional ).
  append value #( sign = 'I' option = 'EQ' low = '*' ) to lr_type.

  SELECT *
    FROM zhrt_fi_tv_file
    INTO CORRESPONDING FIELDS OF TABLE @lt_file
      WHERE reinr = @lv_reinr AND type IN @lr_type.

  LOOP AT lt_file ASSIGNING FIELD-SYMBOL(<ls_file>).
    CALL FUNCTION 'SCMS_URL_GENERATE'
      EXPORTING
        command      = 'get'
        contrep      = get_repository( )
        docid        = <ls_file>-file_id
        compid       = 'request'
      IMPORTING
        absolute_uri = <ls_file>-uri
      EXCEPTIONS
        OTHERS       = 1.
  ENDLOOP.

  MOVE-CORRESPONDING lt_file TO et_entityset.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->FILL_SHLP_SELOPT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IT_FILTER_SELOPT               TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IV_PROPERTY                    TYPE        STRING
* | [--->] IV_SHLPNAME                    TYPE        SHLPNAME
* | [--->] IV_SHLPFIELD                   TYPE        SHLPFIELD
* | [<-->] CT_SHLP_SELOPT                 TYPE        DDSHSELOPS
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD FILL_SHLP_SELOPT.
  DATA(lt_selopt) = VALUE #( it_filter_selopt[ property = iv_property ]-select_options OPTIONAL ).
  LOOP AT lt_selopt ASSIGNING FIELD-SYMBOL(<ls_selopt>).
    CHECK <ls_selopt>-low IS NOT INITIAL.
    APPEND INITIAL LINE TO ct_shlp_selopt ASSIGNING FIELD-SYMBOL(<ls_shlp_selopt>).
    <ls_shlp_selopt>-shlpname = iv_shlpname.
    <ls_shlp_selopt>-shlpfield = iv_shlpfield.
    MOVE-CORRESPONDING <ls_selopt> TO <ls_shlp_selopt>.
  ENDLOOP.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->FORMSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_FORMS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD formsset_get_entityset.
    TYPES: BEGIN OF subtypes,
             subtype TYPE subty,
           END OF subtypes.
    DATA: _p0021            TYPE TABLE OF p0021,
          lt_user_info      TYPE pernr_us_tab,
          wa_subtypes       TYPE subtypes,
          it_subtypes       TYPE TABLE OF subtypes,
          lv_haskids        TYPE abap_bool VALUE abap_false,
          lv_gbdt           LIKE sy-datum,
          lv_3jdt           LIKE sy-datum,
          lv_years          TYPE t5a4a-dlyyr VALUE 3,
          lv_months         TYPE t5a4a-dlymo VALUE 0,
          lv_days           TYPE t5a4a-dlydy VALUE 0,
          lv_param          TYPE string,
          lv_protocol       TYPE string,
          lv_host           TYPE string,
          lv_port           TYPE string,
          lv_application    TYPE string,
          url               TYPE string,
          lv_pernr          TYPE persno,
          lv_pernr_str      TYPE string,
          lv_executor_pernr TYPE string.
    wa_subtypes-subtype = '5'. APPEND wa_subtypes TO it_subtypes.
    wa_subtypes-subtype = '6'. APPEND wa_subtypes TO it_subtypes.
    wa_subtypes-subtype = '909'. APPEND wa_subtypes TO it_subtypes.
    wa_subtypes-subtype = '910'. APPEND wa_subtypes TO it_subtypes.


    CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
      EXPORTING
        user   = sy-uname
      TABLES
        ee_tab = lt_user_info.
    IF lt_user_info IS NOT INITIAL.
      lv_executor_pernr = lt_user_info[ 1 ]-pernr.
    ENDIF.

    IF it_filter_select_options IS NOT INITIAL.
      lv_pernr = it_filter_select_options[ 1 ]-select_options[ 1 ]-low.
    ELSE.
      IF lt_user_info IS NOT INITIAL.
        lv_pernr = lt_user_info[ 1 ]-pernr.
      ENDIF.
    ENDIF.

    SELECT id, header, text, link
      FROM zhrt_tv_forms
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset.

    cl_http_server=>if_http_server~get_location(
      EXPORTING
        application  = /ui2/if_start_url=>co_flp
      IMPORTING
        host         = lv_host
        port         = lv_port
        out_protocol = lv_protocol ).

    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<et_entityset>).
      CLEAR: url, lv_pernr_str.
      CONCATENATE 'Pernr=' '''' lv_pernr '''' INTO lv_pernr_str.
      REPLACE 'Pernr' WITH lv_pernr_str INTO <et_entityset>-link.
*      Pernr='',Reinr='',Type='agr')/$
*      replace 'Pernr=''''
      CONCATENATE lv_protocol '://' lv_host ':' lv_port <et_entityset>-link INTO url.
      <et_entityset>-link = url.
    ENDLOOP.



    IF lv_pernr IS NOT INITIAL AND lv_executor_pernr IS NOT INITIAL.

      LOOP AT it_subtypes ASSIGNING FIELD-SYMBOL(<it_subtypes>).
        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
        CALL FUNCTION 'HR_READ_SUBTYPE'
          EXPORTING
            pernr         = lv_pernr    "lt_user_info[ 1 ]-pernr   "'00020483'
            infty         = '0021'
            subty         = conv subty( <it_subtypes>-subtype )
            begda         = sy-datum
            endda         = sy-datum
            no_auth_check = 'X'
          TABLES
            infty_tab     = _p0021.
        IF sy-subrc = 0.
          IF lines( _p0021 ) > 0.
            LOOP AT _p0021 ASSIGNING FIELD-SYMBOL(<_p0021>).
              CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
                EXPORTING
                  date      = <_p0021>-fgbdt
                  days      = lv_days
                  months    = lv_months
                  signum    = '+'
                  years     = lv_years
                IMPORTING
                  calc_date = lv_3jdt.
              IF lv_3jdt > sy-datum.
                lv_haskids = abap_true.
                EXIT.
              ENDIF.
            ENDLOOP.
          ENDIF.
          IF lv_haskids = abap_true.
            EXIT.
          ENDIF.
        ENDIF.
      ENDLOOP.
      IF lv_haskids = abap_false.
        DELETE et_entityset WHERE id = 1. " index 1.  " with table key id = 1.
      ENDIF.
      LOOP AT et_entityset ASSIGNING <et_entityset>.
        et_entityset[ sy-tabix ]-id = sy-tabix.
      ENDLOOP.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT=>GET_APPR_LIST
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_PERNR                       TYPE        PERSNO
* | [--->] IV_TYPE                        TYPE        ZHRE_BTRIP_SDESCR_CODE(optional)
* | [--->] IV_REINR                       TYPE        REINR
* | [<-->] CT_LIST                        TYPE        ZHR_UI_TRIP_APPR_LIST_T
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_appr_list.
    DATA: lv_uname    TYPE uname,
          lt_p0105    TYPE TABLE OF p0105,
          lt_p0002    TYPE TABLE OF p0002,
          lt_route    TYPE zhr_ui_trip_approver_t,
          lt_trip     TYPE TABLE OF zhrt_ui_trip,
          lv_pernr    TYPE persno,
          _bipernr    TYPE REF TO zhr_objbif_pernr,
          _biplans    TYPE REF TO zhr_objbif_plans,
          _biorgeh    TYPE REF TO zhr_objbif_orgeh,
          lv_status_1 TYPE zhre_ui_trip_status_1.
    CONSTANTS: lc_app_id TYPE zhre_appid VALUE 'REQ'.
    DEFINE m_get_pernr.
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
       EXPORTING
         user_name                     = &1
       IMPORTING
         employeenumber                = &2
       EXCEPTIONS
         no_employeenumber_found       = 1
         subtype_not_available         = 2
         OTHERS                        = 3.
    END-OF-DEFINITION.
    IF iv_pernr IS INITIAL.
      m_read_inf iv_pernr '0105' lt_p0105.
      TRY.
          lv_uname = lt_p0105[ subty = '0001' ]-usrid.
        CATCH cx_root.
          EXIT.
      ENDTRY.
    ENDIF.
    get_history( EXPORTING
                   iv_pernr = iv_pernr
                   iv_reinr = iv_reinr
                   iv_app_id = ''"lc_app_id
                  CHANGING
                   ct_trip = lt_trip ).
* Определяем какой статус будем анализировать создание/изменение/отмена
    SELECT SINGLE * FROM zhrt_ui_trip WHERE reinr = @iv_reinr AND pernr = @iv_pernr INTO @DATA(ls_real_trip).
    get_appr_route( EXPORTING
                      im_author = lv_uname
                      iv_pernr = ls_real_trip-pernr
                      im_type = iv_type
                      iv_past_trip = ls_real_trip-past_trip
                      iv_status = ls_real_trip-status_1
                     CHANGING
                      ch_tab = lt_route ).
    IF ls_real_trip-status_1 EQ 4 OR ls_real_trip-status_1 EQ 5.
      LOOP AT lt_trip ASSIGNING FIELD-SYMBOL(<trip1>).
        IF <trip1>-status_1 EQ 4 OR <trip1>-status_1 EQ 5.
          EXIT.
        ENDIF.
        DATA(lv_old_status_1) = <trip1>-status_1.
      ENDLOOP.
      lv_status_1 = lv_old_status_1.
    ELSEIF ls_real_trip-status_1 EQ 1.
      lv_status_1 = 1.
    ELSEIF ls_real_trip-status_1 EQ 2.
      lv_status_1 = 2.
    ELSEIF ls_real_trip-status_1 EQ 3.
      lv_status_1 = 2.
    ENDIF.
* Оставляем в истории только нужный статус
    DELETE lt_trip WHERE status_1 NE lv_status_1.
* Если цель командировки обучение, то добавляем в маршрут спеца по обучению
    IF ls_real_trip-trip_goal EQ '011'.
      READ TABLE lt_route WITH KEY dd = abap_true TRANSPORTING NO FIELDS.
      IF sy-subrc EQ 0.
        LOOP AT lt_trip ASSIGNING FIELD-SYMBOL(<trip>) WHERE approver IS NOT INITIAL AND edu_appr_flag EQ abap_true.
          DATA(lv_uname_obuch) = <trip>-approver.
        ENDLOOP.
        lv_uname_obuch = COND #( WHEN lv_uname_obuch IS INITIAL THEN 'XXXX' ELSE lv_uname_obuch ).
        INSERT VALUE #( uname = lv_uname_obuch ) INTO lt_route INDEX sy-tabix.
      ENDIF.
    ENDIF.
* Если статус отклонена, то все согласования пустые
    IF ls_real_trip-status_2 EQ 4.
      DATA(lv_skip_approve) = abap_true.
    ENDIF.
* Если заявка не утверждена ЕИО, то нужно добавить в конце таблицы строку, иначе добавить ЕИО в маршрут
    READ TABLE lt_trip WITH KEY status_1 = lv_status_1 status_2 = 8 ASSIGNING <trip1>.
    IF sy-subrc EQ 0.
      APPEND INITIAL LINE TO lt_route ASSIGNING FIELD-SYMBOL(<route>).
      <route>-uname = <trip1>-aenam.
      <route>-gid = abap_true.
      DATA(lv_date_eio) = |{ CONV dats( <trip1>-rdate ) DATE = USER }|.
      DATA(lv_stat_eio) = 'Согласовано'.
    ELSE.
      LOOP AT lt_trip ASSIGNING <trip1> WHERE status_1 = lv_status_1 AND status_2 = 5 AND approver IS NOT INITIAL .
        APPEND INITIAL LINE TO lt_route ASSIGNING <route>.
        <route>-uname = <trip1>-approver.
        <route>-gid = abap_true.
      ENDLOOP.
      IF sy-subrc NE 0.
        DATA(lv_add_eio) = abap_true.
      ENDIF.
    ENDIF.


    LOOP AT lt_route ASSIGNING <route>.
      APPEND INITIAL LINE TO ct_list ASSIGNING FIELD-SYMBOL(<line>).
      <line>-num = sy-tabix.
      IF sy-tabix EQ 1.
        LOOP AT lt_trip ASSIGNING <trip1> WHERE status_2 = 3.
          EXIT.
        ENDLOOP.
        IF <trip1> IS ASSIGNED.
          IF <trip1>-aenam NE lv_uname.
            <line>-base = 'Специалист по ведению командировок (является Инициатором заявки)'.
          ELSE.
            <line>-base = 'Работник – ЛКР (является Инициатором заявки)'.
          ENDIF.
          <line>-status = 'Направлено на согласование'.
          <line>-date = |{ CONV dats( <trip1>-rdate ) DATE = USER }|.
          <route>-uname = <trip1>-aenam.
        ELSE.
          <line>-base = 'Работник – ЛКР (является Инициатором заявки)'.
        ENDIF.
      ELSE.
        IF <route>-gid EQ abap_true.
          <line>-base = 'ЕИО - ЛКР'.
        ELSE.
          <line>-base = 'Руководитель - ЛКР'.
        ENDIF.
        IF <route>-uname EQ lv_uname_obuch.
          <line>-base = 'Специалист по обучению'.
        ENDIF.
        IF lv_skip_approve NE abap_true.
          LOOP AT lt_trip ASSIGNING <trip1> WHERE approver = <route>-uname.
            READ TABLE lt_trip INDEX sy-tabix + 1 ASSIGNING FIELD-SYMBOL(<next_trip>).
            CHECK sy-subrc EQ 0.
            IF <next_trip>-aenam EQ <route>-uname.
              <line>-status = 'Согласовано'.
              <line>-date = |{ CONV dats( <next_trip>-rdate ) DATE = USER }|.
            ELSE.
              SELECT SINGLE active FROM hrus_d2
               WHERE us_name = @<route>-uname
                 AND rep_name = @<next_trip>-aenam
                 AND begda <= @<next_trip>-rdate
                 AND endda >= @<next_trip>-rdate
                 AND reppr = 'ZREQ'
                 AND active = @abap_true
                INTO @DATA(lv_act_deleg).
              IF sy-subrc EQ 0.
                m_get_pernr <next_trip>-aenam lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                DATA(ls_p0002) = VALUE #( lt_p0002[ 1 ] OPTIONAL ).
                <line>-status = |Согласовано делегатом { ls_p0002-nachn } { ls_p0002-vorna+0(1) }.{ ls_p0002-midnm+0(1) }.|.
                <line>-date = |{ CONV dats( <next_trip>-rdate ) DATE = USER }|.
                CLEAR: lv_pernr, ls_p0002, lt_p0002[].
              ENDIF.
            ENDIF.
          ENDLOOP.
        ENDIF.
      ENDIF.
      m_get_pernr <route>-uname lv_pernr.
      IF lv_pernr IS NOT INITIAL.
        m_read_inf lv_pernr '0002' lt_p0002.
        ls_p0002 = VALUE #( lt_p0002[ 1 ] OPTIONAL ).
        <line>-fio = |{ ls_p0002-nachn } { ls_p0002-vorna+0(1) }.{ ls_p0002-midnm+0(1) }.|.

        CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
          EXPORTING
            otype  = c_otype_p
            objid  = lv_pernr
            datum  = sy-datum
          CHANGING
            result = _bipernr
          EXCEPTIONS
            OTHERS = 1.
        IF _bipernr IS NOT INITIAL.
          TRY.
              _bipernr->get_orgass(
                EXPORTING
                  adatum = sy-datum
                IMPORTING
                  resplans = _biplans
                  resorgeh = _biorgeh
            ).
              IF _biplans IS NOT INITIAL.
                DATA(lv_plnam) = _biplans->get_name( adatum = sy-datum anoauth = abap_true ).
              ENDIF.
              IF _biorgeh IS NOT INITIAL.
                DATA(lv_orgna) = _biorgeh->get_name( adatum = sy-datum anoauth = abap_true ).
              ENDIF.
            CATCH cx_root.
          ENDTRY.
        ENDIF.
        <line>-plans = lv_plnam.
        <line>-orgeh = lv_orgna.
      ENDIF.
      CLEAR: lv_pernr, lt_p0002[], ls_p0002, _bipernr, _biplans, _biorgeh, lv_plnam, lv_orgna.
    ENDLOOP.

    IF lv_add_eio EQ abap_true AND <line> IS ASSIGNED.
      <line>-status = lv_stat_eio.
      <line>-date = lv_date_eio.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT=>GET_APPR_ROUTE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IM_AUTHOR                      TYPE        UNAME
* | [--->] IM_TYPE                        TYPE        ZHRE_BTRIP_SDESCR_CODE(optional)
* | [--->] IV_PAST_TRIP                   TYPE        FLAG(optional)
* | [--->] IV_PERNR                       TYPE        PERSNO(optional)
* | [--->] IV_STATUS                      TYPE        ZHRE_UI_TRIP_STATUS_1(optional)
* | [<-->] CH_TAB                         TYPE        ZHR_UI_TRIP_APPROVER_T
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_appr_route.
    DATA: ls_lead      TYPE zhr_objbif_objec_leader_s,
          _bipernr     TYPE REF TO zcl_objbif_pernr,
          _biorgeh     TYPE REF TO zhr_objbif_orgeh,
          _biplans     TYPE REF TO zhr_objbif_plans,
          it_attrib    TYPE TABLE OF pt1222,
          lt_struc     TYPE TABLE OF struc,
          lt_p0105     TYPE TABLE OF p0105,
          lt_p0001     TYPE TABLE OF p0001,
          l_objid      TYPE objektid,
          l_pernr      TYPE persno,
          ret_uname    TYPE uname,
          r_appr       TYPE RANGE OF uname,
          r_orgeh      TYPE RANGE OF orgeh,
          l_index      TYPE i,
          l_year       TYPE jahr,
          lv_zam       TYPE persno,
          lv_plans_gid TYPE plans.
    CONSTANTS: lc_param TYPE rvari_vnam VALUE 'ZHR_FIO_TRIP_GID'.
    DEFINE m_get_objec.
      CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
        EXPORTING
          otype  = &1
          objid  = CONV objektid( &2 )
          datum  = sy-datum
        CHANGING
          result = &3
        EXCEPTIONS
          OTHERS = 4.
    END-OF-DEFINITION.
    DEFINE m_read_inf.
      REFRESH &3.
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr           = &1
          infty           = &2
          begda           = sy-datum
          endda           = sy-datum
        TABLES
          infty_tab       = &3
        EXCEPTIONS
          infty_not_found = 1
          invalid_input   = 2
          OTHERS          = 3.
    END-OF-DEFINITION.
    l_year = sy-datum+0(4).
    IF iv_pernr IS INITIAL.
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
        EXPORTING
          user_name               = im_author
        IMPORTING
          employeenumber          = l_pernr
        EXCEPTIONS
          no_employeenumber_found = 1
          subtype_not_available   = 2
          OTHERS                  = 3.
    ELSE.
      l_pernr = iv_pernr.
    ENDIF.
    DATA(lr_plans_gid) = zcl_tvarvc=>read( i_name = 'ZHR_FIO_TRIP_GID' i_type = 'S' ).
    lv_plans_gid = VALUE #( lr_plans_gid[ 1 ]-low OPTIONAL ).
* Считываем доп маршрут
    SELECT * FROM zhrt_ui_trip_apr INTO TABLE @DATA(lt_apr).
    DATA(lt_apr_2) = lt_apr[].
    m_read_inf l_pernr '0001' lt_p0001.
    l_objid = VALUE #( lt_p0001[ 1 ]-orgeh OPTIONAL ).
    DATA(lv_plans) = VALUE #( lt_p0001[ 1 ]-plans OPTIONAL ).
    APPEND INITIAL LINE TO ch_tab ASSIGNING FIELD-SYMBOL(<line>).
    <line>-uname = im_author.
    <line>-pernr = l_pernr.
    IF check_top_man( im_uname = im_author ) = abap_true.
      <line>-top = abap_true.
    ENDIF.
    CHECK l_objid IS NOT INITIAL.
    READ TABLE lt_apr WITH KEY objid = l_objid TRANSPORTING NO FIELDS.
    IF sy-subrc EQ 0.
      DELETE lt_apr INDEX sy-tabix.
    ENDIF.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = '00000000' ) TO r_orgeh.
*Собираем маршрут до топа включительно
    CLEAR: lt_struc[].
    CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
    CALL FUNCTION 'RH_STRUC_GET'
      EXPORTING
        act_otype       = c_otype_o
        act_objid       = l_objid
        act_wegid       = c_wegid_up
        act_begda       = sy-datum
        act_endda       = sy-datum
        authority_check = ''
      TABLES
        result_struc    = lt_struc
      EXCEPTIONS
        no_plvar_found  = 1
        no_entry_found  = 2
        OTHERS          = 3.
    IF lv_plans NE lv_plans_gid.
      LOOP AT lt_struc ASSIGNING FIELD-SYMBOL(<struc>).
        READ TABLE lt_apr WITH KEY objid = <struc>-objid ASSIGNING FIELD-SYMBOL(<apr>).
        IF sy-subrc EQ 0.
          DATA(lv_role) = <apr>-role.
          DELETE lt_apr INDEX sy-tabix.
        ENDIF.
        APPEND VALUE #( sign = 'I' option = 'EQ' low = <struc>-objid ) TO r_orgeh.
        CLEAR: _biorgeh, ls_lead.
        m_get_objec c_otype_o <struc>-objid _biorgeh.
        CHECK _biorgeh IS NOT INITIAL.
*        _biorgeh->get_leader(
*         EXPORTING
*           adatum = sy-datum
*         IMPORTING
*           result = ls_lead
*                ).
        get_leader(
         EXPORTING
           iv_objid = CONV objid( <struc>-objid )
           iv_date = sy-datum
         IMPORTING
           es_lead = ls_lead
                ).
*        CHECK ls_lead-pernr IS NOT INITIAL.
        m_read_inf ls_lead-pernr '0105' lt_p0105.
*{ 09.06.2021 mvprokofyev 7700157035 Ищем заместителя
        CLEAR lv_zam.
        CHECK ls_lead-plans IS NOT INITIAL.
        SELECT SINGLE * INTO @DATA(ls_hrp1007)
            FROM hrp1007
            WHERE objid = @ls_lead-plans
              AND status = '0'
              AND plvar = '01'
              AND otype = 'S'
              AND begda <= @sy-datum
              AND endda >= @sy-datum.
        IF sy-subrc IS INITIAL AND ls_hrp1007-status = '0'.
*   READ_INFOTYPE не подходит, так как выборка идет не потабельному
          SELECT SINGLE pernr
            FROM pa2003
            INTO lv_zam
              WHERE subty = '02'
                AND endda >= sy-datum
                AND begda <= sy-datum
                AND plans = ls_lead-plans.
          IF lv_zam IS NOT INITIAL.
            CLEAR lt_p0105[].
            CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
            m_read_inf lv_zam '0105' lt_p0105.
            ret_uname = VALUE #( lt_p0105[ subty = '0001' ]-usrid OPTIONAL ).
           ENDIF.
        ENDIF.
* 09.06.2021 mvprokofyev 7700157035}
        ret_uname = VALUE #( lt_p0105[ subty = '0001' ]-usrid OPTIONAL ).
        DATA(lr_plans_set) = zcl_tvarvc=>read( i_name = 'ZHR_FIO_TRIP_TOP' i_type = 'S' ).
        DATA lr_plans TYPE RANGE OF plans.
        LOOP AT lr_plans_set ASSIGNING FIELD-SYMBOL(<ls_plans_set>).
          APPEND VALUE #( sign = 'I' option = 'EQ' low = CONV plans( <ls_plans_set>-low ) ) TO lr_plans.
        ENDLOOP.
        IF ls_lead-plans IN lr_plans AND lines( ch_tab ) EQ 1.
          DATA(lv_del_ra) = abap_true.
          <line>-subor_gid = abap_true.
        ENDIF.

        CHECK ret_uname IS NOT INITIAL.
        READ TABLE lt_p0105 WITH KEY subty = c_ses INTO DATA(ls_p0105).
        DATA(l_flag) = ls_p0105-zzflag.
*      IF l_flag IS INITIAL.
*        send_noses( imper = ls_lead-pernr ).
*      ENDIF.
        IF ls_lead-pernr NE l_pernr.
          APPEND INITIAL LINE TO ch_tab ASSIGNING <line>.
          <line>-uname = ret_uname.
          <line>-orgeh = <struc>-objid.
          <line>-pernr = ls_lead-pernr.
        ELSE.
          READ TABLE ch_tab INDEX 1 ASSIGNING <line>.
        ENDIF.
        IF sy-tabix EQ 2.
          <line>-nep_boss = abap_true.
        ENDIF.
*{ 09.06.2021 mvprokofyev 7700157035
        IF lv_zam IS NOT INITIAL.
          <line>-zam = abap_true.
        ENDIF.
* 09.06.2021 mvprokofyev 7700157035}
        IF lv_role IS NOT INITIAL.
          CASE lv_role.
            WHEN 1.
              <line>-dd = abap_true.
            WHEN 2.
              <line>-vp = abap_true.
            WHEN 3.
              <line>-ra = abap_true.
            WHEN 4.
              <line>-gid = abap_true.
            WHEN OTHERS.
          ENDCASE.
        ENDIF.
        CLEAR lv_role.
* Определяем руководитель ли ССП
        CLEAR: it_attrib[].
        CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
        CALL FUNCTION 'RH_OM_ATTRIBUTES_READ'
          EXPORTING
            plvar            = c_plvar
            otype            = c_otype_o
            objid            = <struc>-objid
            seldate          = sy-datum
          TABLES
            attrib           = it_attrib
          EXCEPTIONS
            no_active_plvar  = 1
            no_attributes    = 2
            no_values        = 3
            object_not_found = 4
            OTHERS           = 5.
        READ TABLE it_attrib ASSIGNING FIELD-SYMBOL(<attr>) WITH KEY attrib = 'ZLEVEL' low = 'ДП'.
        IF sy-subrc EQ 0.
          <line>-ssp_boss = abap_true.
        ENDIF.
* Определяем топ ли
*      APPEND VALUE #( sign = 'I' option = 'EQ' low = ret_uname ) TO r_appr.
        IF check_top_man( im_uname = ret_uname ) = abap_true.
          <line>-top = abap_true.
          EXIT.
        ENDIF.
      ENDLOOP.

      IF lines( ch_tab ) = 1.
        DATA(lf_non) = abap_true.
*      lt_apr[] = lt_apr_2[].
      ENDIF.
    ELSE.
      DELETE lt_apr WHERE role NE 1.
      <line>-gid = abap_true.
    ENDIF.
* Собираем оставшийся маршрут
    SORT lt_apr BY role ASCENDING.
    TRY.
        READ TABLE lt_struc WITH KEY objid = l_objid INTO DATA(ls_struc).
      CATCH cx_root.
    ENDTRY.
    IF ls_struc IS NOT INITIAL.
      LOOP AT lt_apr ASSIGNING <apr>.
        CLEAR: _biorgeh, ls_lead.
*        IF lf_non = abap_true.
*        CHECK <apr>-role EQ 2 OR <apr>-role EQ 3.
*        ENDIF.
        m_get_objec c_otype_o <apr>-objid _biorgeh.
        CHECK _biorgeh IS NOT INITIAL.
        _biorgeh->get_leader(
         EXPORTING
           adatum = sy-datum
         IMPORTING
           result = ls_lead
                ).
        CHECK ls_lead-pernr IS NOT INITIAL.
        m_read_inf ls_lead-pernr '0105' lt_p0105.
        DATA(l_uname) = VALUE #( lt_p0105[ subty = '0001' ]-usrid OPTIONAL ).
        CHECK l_uname IS NOT INITIAL.
        APPEND INITIAL LINE TO ch_tab ASSIGNING <line>.
        <line>-uname = l_uname.
        CASE <apr>-role.
          WHEN 1.
            <line>-dd = abap_true.
          WHEN 2.
            <line>-vp = abap_true.
          WHEN 3.
            <line>-ra = abap_true.
          WHEN 4.
            <line>-gid = abap_true.
          WHEN OTHERS.
        ENDCASE.
      ENDLOOP.
    ENDIF.
    IF lv_plans NE lv_plans_gid.
* Если автор не топ, то удаляем из маршрута Руководителя Аппарата компании
      IF ( check_top_man( im_uname = im_author ) = abap_false AND ch_tab[ 1 ]-subor_gid = abap_false ) OR lv_del_ra EQ abap_false.
        READ TABLE ch_tab INDEX lines( ch_tab ) ASSIGNING <line>.
        IF sy-subrc EQ 0.
          IF <line>-ra EQ abap_true.
            DELETE TABLE ch_tab FROM <line>."WHERE ra = abap_true.
          ENDIF.
        ENDIF.
      ENDIF.

* Удаляем дубли
      LOOP AT ch_tab ASSIGNING <line>.
        LOOP AT ch_tab FROM sy-tabix + 1 ASSIGNING FIELD-SYMBOL(<line2>).
          IF <line2>-uname EQ <line>-uname.
            <line>-nep_boss = COND #( WHEN <line2>-nep_boss IS NOT INITIAL THEN abap_true ELSE <line>-nep_boss ).
            <line>-ssp_boss = COND #( WHEN <line2>-ssp_boss IS NOT INITIAL THEN abap_true ELSE <line>-ssp_boss ).
            <line>-top = COND #( WHEN <line2>-top IS NOT INITIAL THEN abap_true ELSE <line>-top ).
            <line>-dd = COND #( WHEN <line2>-dd IS NOT INITIAL THEN abap_true ELSE <line>-dd ).
            <line>-vp = COND #( WHEN <line2>-vp IS NOT INITIAL THEN abap_true ELSE <line>-vp ).
            <line>-ra = COND #( WHEN <line2>-ra IS NOT INITIAL THEN abap_true ELSE <line>-ra ).
            DELETE TABLE ch_tab FROM <line2>.
          ENDIF.
        ENDLOOP.
      ENDLOOP.
      IF iv_past_trip IS NOT INITIAL.
        READ TABLE ch_tab ASSIGNING <line> WITH KEY dd = abap_true.
        IF sy-subrc = 0.
          READ TABLE lt_apr_2 WITH KEY objid = <line>-orgeh TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            DELETE ch_tab WHERE dd EQ abap_true.
          ENDIF.
        ENDIF.
      ENDIF.
      IF iv_status EQ '4'.
        READ TABLE ch_tab INDEX 1 INTO DATA(ls_tab).
        DELETE ch_tab WHERE nep_boss NE abap_true AND ssp_boss NE abap_true AND top NE abap_true.
        IF ls_tab IS NOT INITIAL AND ls_tab-nep_boss IS INITIAL AND ls_tab-ssp_boss IS INITIAL AND ls_tab-top IS INITIAL.
          INSERT ls_tab INTO ch_tab INDEX 1.
        ENDIF.
*        IF ls_tab-ssp_boss IS INITIAL AND ls_tab-top IS INITIAL.
*          DELETE ch_tab WHERE top EQ abap_true AND nep_boss NE abap_true.
*        ENDIF.
        IF ls_tab-ssp_boss IS INITIAL AND ls_tab-top IS INITIAL.
          READ TABLE ch_tab WITH KEY ssp_boss = abap_true ASSIGNING FIELD-SYMBOL(<ls_tab>).
          IF sy-subrc EQ 0.
            CLEAR: <ls_tab>-top.
          ENDIF.
          DELETE ch_tab WHERE top EQ abap_true AND nep_boss NE abap_true.
        ENDIF.
      ENDIF.

* Если командировка для расследования ЧП, то сокращаем маршрут
      IF im_type EQ 16.
        READ TABLE ch_tab INDEX 1 INTO ls_tab.
        CHECK sy-subrc EQ 0.
        DELETE ch_tab WHERE nep_boss NE abap_true AND ssp_boss NE abap_true AND top NE abap_true.
        INSERT ls_tab INTO ch_tab INDEX 1.
      ENDIF.
    ENDIF.
    IF iv_status EQ '4' AND ( ch_tab[ 1 ]-top EQ abap_true OR ch_tab[ 1 ]-subor_gid EQ abap_true ).
      READ TABLE ch_tab INDEX 1 INTO ls_tab.
      REFRESH ch_tab[].
      APPEND ls_tab TO ch_tab.
    ENDIF.

    LOOP AT ch_tab ASSIGNING <line> WHERE zam = abap_true.
      CLEAR: <line>-top, <line>-nep_boss, <line>-ssp_boss, <line>-dd, <line>-gid.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT=>GET_APPR_ROUTE_ALL
* +-------------------------------------------------------------------------------------------------+
* | [--->] IM_AUTHOR                      TYPE        UNAME
* | [--->] IM_TYPE                        TYPE        ZHRE_BTRIP_SDESCR_CODE(optional)
* | [--->] IV_PAST_TRIP                   TYPE        FLAG(optional)
* | [--->] IV_PERNR                       TYPE        PERSNO(optional)
* | [--->] IV_STATUS                      TYPE        ZHRE_UI_TRIP_STATUS_1(optional)
* | [<-->] CH_TAB                         TYPE        ZHR_UI_TRIP_APPROVER_T_ALL
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_appr_route_all.
    DATA: ls_lead      TYPE zhr_objbif_objec_leader_s,
          _bipernr     TYPE REF TO zcl_objbif_pernr,
          _biorgeh     TYPE REF TO zhr_objbif_orgeh,
          _biplans     TYPE REF TO zhr_objbif_plans,
          it_attrib    TYPE TABLE OF pt1222,
          lt_struc     TYPE TABLE OF struc,
          lt_p0105     TYPE TABLE OF p0105,
          lt_p0001     TYPE TABLE OF p0001,
          l_objid      TYPE objektid,
          l_pernr      TYPE persno,
          ret_uname    TYPE uname,
          r_appr       TYPE RANGE OF uname,
          r_orgeh      TYPE RANGE OF orgeh,
          l_index      TYPE i,
          l_year       TYPE jahr,
          lv_zam       TYPE persno,
          lv_plans_gid TYPE plans.
    CONSTANTS: lc_param TYPE rvari_vnam VALUE 'ZHR_FIO_TRIP_GID'.
    DEFINE m_get_objec.
      CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
        EXPORTING
          otype  = &1
          objid  = CONV objektid( &2 )
          datum  = sy-datum
        CHANGING
          result = &3
        EXCEPTIONS
          OTHERS = 4.
    END-OF-DEFINITION.
    DEFINE m_read_inf.
      REFRESH &3.
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr           = &1
          infty           = &2
          begda           = sy-datum
          endda           = sy-datum
        TABLES
          infty_tab       = &3
        EXCEPTIONS
          infty_not_found = 1
          invalid_input   = 2
          OTHERS          = 3.
    END-OF-DEFINITION.
    l_year = sy-datum+0(4).
    IF iv_pernr IS INITIAL.
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
        EXPORTING
          user_name               = im_author
        IMPORTING
          employeenumber          = l_pernr
        EXCEPTIONS
          no_employeenumber_found = 1
          subtype_not_available   = 2
          OTHERS                  = 3.
    ELSE.
      l_pernr = iv_pernr.
    ENDIF.
    DATA(lr_plans_gid) = zcl_tvarvc=>read( i_name = 'ZHR_FIO_TRIP_GID' i_type = 'S' ).
    lv_plans_gid = VALUE #( lr_plans_gid[ 1 ]-low OPTIONAL ).
* Считываем доп маршрут
    SELECT * FROM zhrt_ui_trip_apr INTO TABLE @DATA(lt_apr).
    DATA(lt_apr_2) = lt_apr[].
    m_read_inf l_pernr '0001' lt_p0001.
    l_objid = VALUE #( lt_p0001[ 1 ]-orgeh OPTIONAL ).
    DATA(lv_plans) = VALUE #( lt_p0001[ 1 ]-plans OPTIONAL ).
    APPEND INITIAL LINE TO ch_tab ASSIGNING FIELD-SYMBOL(<line>).
    <line>-uname = im_author.
    <line>-pernr = l_pernr.
    IF check_top_man( im_uname = im_author ) = abap_true.
      <line>-top = abap_true.
    ENDIF.
    CHECK l_objid IS NOT INITIAL.
    READ TABLE lt_apr WITH KEY objid = l_objid TRANSPORTING NO FIELDS.
    IF sy-subrc EQ 0.
      DELETE lt_apr INDEX sy-tabix.
    ENDIF.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = '00000000' ) TO r_orgeh.
*Собираем маршрут до топа включительно
    CLEAR: lt_struc[].
    CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
    CALL FUNCTION 'RH_STRUC_GET'
      EXPORTING
        act_otype       = c_otype_o
        act_objid       = l_objid
        act_wegid       = c_wegid_up
        act_begda       = sy-datum
        act_endda       = sy-datum
        authority_check = ''
      TABLES
        result_struc    = lt_struc
      EXCEPTIONS
        no_plvar_found  = 1
        no_entry_found  = 2
        OTHERS          = 3.
    IF lv_plans NE lv_plans_gid.
      LOOP AT lt_struc ASSIGNING FIELD-SYMBOL(<struc>).
        READ TABLE lt_apr WITH KEY objid = <struc>-objid ASSIGNING FIELD-SYMBOL(<apr>).
        IF sy-subrc EQ 0.
          DATA(lv_role) = <apr>-role.
          DELETE lt_apr INDEX sy-tabix.
        ENDIF.
        APPEND VALUE #( sign = 'I' option = 'EQ' low = <struc>-objid ) TO r_orgeh.
        CLEAR: _biorgeh, ls_lead.
        m_get_objec c_otype_o <struc>-objid _biorgeh.
        CHECK _biorgeh IS NOT INITIAL.
*        _biorgeh->get_leader(
*         EXPORTING
*           adatum = sy-datum
*         IMPORTING
*           result = ls_lead
*                ).
        get_leader(
         EXPORTING
           iv_objid = CONV objid( <struc>-objid )
           iv_date = sy-datum
         IMPORTING
           es_lead = ls_lead
                ).
*        IF ls_lead-pernr IS INITIAL.
*          CHECK ls_lead-plans IS NOT INITIAL.
**проверяем, является ли должность вакантной
*          SELECT SINGLE * INTO ls_hrp1007
*            FROM hrp1007
*            WHERE objid = ls_lead-plans
*            AND status = '0'
*            AND plvar = '01'
*            AND otype = 'S'
*            AND begda <= sy-datum
*            AND endda >= sy-datum.
*
*          CHECK ls_hrp1007 IS  NOT INITIAL.
*          IF ls_hrp1007-status = '0'.
*            <line>-vacancy = abap_true.
*          ENDIF.
*
*        ENDIF.
        m_read_inf ls_lead-pernr '0105' lt_p0105.
*{ 09.06.2021 mvprokofyev 7700157035 Ищем заместителя
        CLEAR lv_zam.
        CHECK ls_lead-plans IS NOT INITIAL.
        SELECT SINGLE * INTO @DATA(ls_hrp1007)
            FROM hrp1007
            WHERE objid = @ls_lead-plans
              AND status = '0'
              AND plvar = '01'
              AND otype = 'S'
              AND begda <= @sy-datum
              AND endda >= @sy-datum.
        IF sy-subrc IS INITIAL AND ls_hrp1007-status = '0'.
*   READ_INFOTYPE не подходит, так как выборка идет не потабельному
          SELECT SINGLE pernr
            FROM pa2003
            INTO lv_zam
              WHERE subty = '02'
                AND endda >= sy-datum
                AND begda <= sy-datum
                AND plans = ls_lead-plans.
          IF lv_zam IS NOT INITIAL.
            CLEAR lt_p0105[].
            CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
            m_read_inf lv_zam '0105' lt_p0105.
            ret_uname = VALUE #( lt_p0105[ subty = '0001' ]-usrid OPTIONAL ).
           ENDIF.
        ENDIF.
* 09.06.2021 mvprokofyev 7700157035}
        ret_uname = VALUE #( lt_p0105[ subty = '0001' ]-usrid OPTIONAL ).
        DATA(lr_plans_set) = zcl_tvarvc=>read( i_name = 'ZHR_FIO_TRIP_TOP' i_type = 'S' ).
        DATA lr_plans TYPE RANGE OF plans.
        LOOP AT lr_plans_set ASSIGNING FIELD-SYMBOL(<ls_plans_set>).
          APPEND VALUE #( sign = 'I' option = 'EQ' low = CONV plans( <ls_plans_set>-low ) ) TO lr_plans.
        ENDLOOP.
        IF ls_lead-plans IN lr_plans AND lines( ch_tab ) EQ 1.
          DATA(lv_del_ra) = abap_true.
          <line>-subor_gid = abap_true.
        ENDIF.

*        IF ret_uname IS INITIAL.
*          <line>-without_s = abap_true.
*        ENDIF.
        READ TABLE lt_p0105 WITH KEY subty = c_ses INTO DATA(ls_p0105).
        DATA(l_flag) = ls_p0105-zzflag.
*      IF l_flag IS INITIAL.
*        send_noses( imper = ls_lead-pernr ).
*      ENDIF.
        IF ls_lead-pernr NE l_pernr.
          APPEND INITIAL LINE TO ch_tab ASSIGNING <line>.
          <line>-uname = ret_uname.
          <line>-orgeh = <struc>-objid.
          <line>-pernr = ls_lead-pernr.
        ELSE.
          READ TABLE ch_tab INDEX 1 ASSIGNING <line>.
        ENDIF.
        IF ls_lead-pernr IS INITIAL.
          CHECK ls_lead-plans IS NOT INITIAL.
*проверяем, является ли должность вакантной

          CHECK ls_hrp1007 IS  NOT INITIAL.
          IF ls_hrp1007-status = '0' AND lv_zam IS INITIAL.
            <line>-vacancy = abap_true.
          ENDIF.

        ENDIF.
        IF ret_uname IS INITIAL AND <line>-vacancy = abap_false.
          <line>-without_s = abap_true.
          IF check_top_man( im_uname = ret_uname im_pernr = <line>-pernr ) = abap_true.
            <line>-top = abap_true.
            EXIT.
          ENDIF.
        ENDIF.

        IF sy-tabix EQ 2.
          <line>-nep_boss = abap_true.
        ENDIF.
        IF lv_role IS NOT INITIAL.
          CASE lv_role.
            WHEN 1.
              <line>-dd = abap_true.
            WHEN 2.
              <line>-vp = abap_true.
            WHEN 3.
              <line>-ra = abap_true.
            WHEN 4.
              <line>-gid = abap_true.
            WHEN OTHERS.
          ENDCASE.
        ENDIF.
        CLEAR lv_role.
* Определяем руководитель ли ССП
        CLEAR: it_attrib[].
        CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
        CALL FUNCTION 'RH_OM_ATTRIBUTES_READ'
          EXPORTING
            plvar            = c_plvar
            otype            = c_otype_o
            objid            = <struc>-objid
            seldate          = sy-datum
          TABLES
            attrib           = it_attrib
          EXCEPTIONS
            no_active_plvar  = 1
            no_attributes    = 2
            no_values        = 3
            object_not_found = 4
            OTHERS           = 5.
        READ TABLE it_attrib ASSIGNING FIELD-SYMBOL(<attr>) WITH KEY attrib = 'ZLEVEL' low = 'ДП'.
        IF sy-subrc EQ 0.
          <line>-ssp_boss = abap_true.
        ENDIF.
* Определяем топ ли
*      APPEND VALUE #( sign = 'I' option = 'EQ' low = ret_uname ) TO r_appr.
        IF check_top_man( im_uname = ret_uname ) = abap_true.
          <line>-top = abap_true.
          EXIT.
        ENDIF.
      ENDLOOP.

      IF lines( ch_tab ) = 1.
        DATA(lf_non) = abap_true.
*      lt_apr[] = lt_apr_2[].
      ENDIF.
    ELSE.
      DELETE lt_apr WHERE role NE 1.
      <line>-gid = abap_true.
    ENDIF.
* Собираем оставшийся маршрут
    SORT lt_apr BY role ASCENDING.
    TRY.
        READ TABLE lt_struc WITH KEY objid = l_objid INTO DATA(ls_struc).
      CATCH cx_root.
    ENDTRY.
    IF ls_struc IS NOT INITIAL.
      LOOP AT lt_apr ASSIGNING <apr>.
        CLEAR: _biorgeh, ls_lead.
*        IF lf_non = abap_true.
*        CHECK <apr>-role EQ 2 OR <apr>-role EQ 3.
*        ENDIF.
        m_get_objec c_otype_o <apr>-objid _biorgeh.
        CHECK _biorgeh IS NOT INITIAL.
        _biorgeh->get_leader(
         EXPORTING
           adatum = sy-datum
         IMPORTING
           result = ls_lead
                ).
        CHECK ls_lead-pernr IS NOT INITIAL.
        m_read_inf ls_lead-pernr '0105' lt_p0105.
        DATA(l_uname) = VALUE #( lt_p0105[ subty = '0001' ]-usrid OPTIONAL ).
        CHECK l_uname IS NOT INITIAL.
        APPEND INITIAL LINE TO ch_tab ASSIGNING <line>.
        <line>-uname = l_uname.
        CASE <apr>-role.
          WHEN 1.
            <line>-dd = abap_true.
          WHEN 2.
            <line>-vp = abap_true.
          WHEN 3.
            <line>-ra = abap_true.
          WHEN 4.
            <line>-gid = abap_true.
          WHEN OTHERS.
        ENDCASE.
      ENDLOOP.
    ENDIF.
    IF lv_plans NE lv_plans_gid.
* Если автор не топ, то удаляем из маршрута Руководителя Аппарата компании
      IF ( check_top_man( im_uname = im_author ) = abap_false AND ch_tab[ 1 ]-subor_gid = abap_false ) OR lv_del_ra EQ abap_false.
        READ TABLE ch_tab INDEX lines( ch_tab ) ASSIGNING <line>.
        IF sy-subrc EQ 0.
          IF <line>-ra EQ abap_true.
            DELETE TABLE ch_tab FROM <line>."WHERE ra = abap_true.
          ENDIF.
        ENDIF.
      ENDIF.

* Удаляем дубли
      LOOP AT ch_tab ASSIGNING <line>.
        LOOP AT ch_tab FROM sy-tabix + 1 ASSIGNING FIELD-SYMBOL(<line2>).
          IF <line2>-uname IS NOT INITIAL AND <line2>-uname EQ <line>-uname.
            <line>-nep_boss = COND #( WHEN <line2>-nep_boss IS NOT INITIAL THEN abap_true ELSE <line>-nep_boss ).
            <line>-ssp_boss = COND #( WHEN <line2>-ssp_boss IS NOT INITIAL THEN abap_true ELSE <line>-ssp_boss ).
            <line>-top = COND #( WHEN <line2>-top IS NOT INITIAL THEN abap_true ELSE <line>-top ).
            <line>-dd = COND #( WHEN <line2>-dd IS NOT INITIAL THEN abap_true ELSE <line>-dd ).
            <line>-vp = COND #( WHEN <line2>-vp IS NOT INITIAL THEN abap_true ELSE <line>-vp ).
            <line>-ra = COND #( WHEN <line2>-ra IS NOT INITIAL THEN abap_true ELSE <line>-ra ).
            DELETE TABLE ch_tab FROM <line2>.
          ENDIF.
        ENDLOOP.
      ENDLOOP.
      IF iv_past_trip IS NOT INITIAL.
        READ TABLE ch_tab ASSIGNING <line> WITH KEY dd = abap_true.
        IF sy-subrc = 0.
          READ TABLE lt_apr_2 WITH KEY objid = <line>-orgeh TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            DELETE ch_tab WHERE dd EQ abap_true.
          ENDIF.
        ENDIF.
      ENDIF.
      IF iv_status EQ '4'.
        READ TABLE ch_tab INDEX 1 INTO DATA(ls_tab).
        DELETE ch_tab WHERE nep_boss NE abap_true AND ssp_boss NE abap_true AND top NE abap_true.
        IF ls_tab IS NOT INITIAL AND ls_tab-nep_boss IS INITIAL AND ls_tab-ssp_boss IS INITIAL AND ls_tab-top IS INITIAL.
          INSERT ls_tab INTO ch_tab INDEX 1.
        ENDIF.
*        IF ls_tab-ssp_boss IS INITIAL AND ls_tab-top IS INITIAL.
*          DELETE ch_tab WHERE top EQ abap_true AND nep_boss NE abap_true.
*        ENDIF.
        IF ls_tab-ssp_boss IS INITIAL AND ls_tab-top IS INITIAL.
          READ TABLE ch_tab WITH KEY ssp_boss = abap_true ASSIGNING FIELD-SYMBOL(<ls_tab>).
          IF sy-subrc EQ 0.
            CLEAR: <ls_tab>-top.
          ENDIF.
          DELETE ch_tab WHERE top EQ abap_true AND nep_boss NE abap_true.
        ENDIF.
      ENDIF.

* Если командировка для расследования ЧП, то сокращаем маршрут
      IF im_type EQ 16.
        READ TABLE ch_tab INDEX 1 INTO ls_tab.
        CHECK sy-subrc EQ 0.
        DELETE ch_tab WHERE nep_boss NE abap_true AND ssp_boss NE abap_true AND top NE abap_true.
        INSERT ls_tab INTO ch_tab INDEX 1.
      ENDIF.
    ENDIF.
    IF iv_status EQ '4' AND ( ch_tab[ 1 ]-top EQ abap_true OR ch_tab[ 1 ]-subor_gid EQ abap_true ).
      READ TABLE ch_tab INDEX 1 INTO ls_tab.
      REFRESH ch_tab[].
      APPEND ls_tab TO ch_tab.
    ENDIF.
    DELETE ch_tab WHERE nep_boss = abap_false AND ssp_boss = abap_false AND top = abap_false AND vacancy = abap_true.

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->GET_CARDSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_PERNR                       TYPE        PERSNO
* | [<-->] CT_SET                         TYPE        ZHR_UI_TRIP_CARD_T
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_cardset.
    DATA: lt_p0105 TYPE TABLE OF p0105.
    CONSTANTS: lc_subt TYPE subty VALUE '9011'.
    SELECT SINGLE contn INTO @DATA(l_rfc_conn_rnp) FROM t7rurptcst00 WHERE progr = 'Z_FIORI_FI_TV'.
    CALL FUNCTION 'ZHR_GET_CARD_FROM_105IT_RFC'
      DESTINATION l_rfc_conn_rnp
      EXPORTING
        pernr           = iv_pernr
        begda           = sy-datum
        endda           = sy-datum
      TABLES
        infty_tab       = lt_p0105
      EXCEPTIONS
        infty_not_found = 1.

    LOOP AT lt_p0105 ASSIGNING FIELD-SYMBOL(<p0105>)." WHERE subty = lc_subt.
      APPEND INITIAL LINE TO ct_set ASSIGNING FIELD-SYMBOL(<entity>).
      <entity>-incid = sy-tabix.
      <entity>-number = <p0105>-usrid.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->GET_ENTITY_REQUESTSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_REINR                       TYPE        REINR
* | [--->] IV_USER                        TYPE        UNAME
* | [--->] IV_APPID                       TYPE        STRING
* | [<-->] CV_PERNR                       TYPE        PERSNO
* | [<-->] CV_SUBTY                       TYPE        SUBTY
* | [<-->] CS_ENTITY                      TYPE        ZHR_UI_FI_TV_REQUEST
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_entity_requestset.
    DATA: lv_role_res      TYPE agr_name,
          lv_role_tax      TYPE agr_name,
          lv_role_acc      TYPE agr_name,
          lv_role_eio      TYPE agr_name,
          lv_role_tri      TYPE agr_name,
          lv_role_edu      TYPE agr_name,
          lv_role_emp      TYPE agr_name,
          lv_role_test     TYPE agr_name,
          lv_role_cons     TYPE agr_name,
          lv_has_role_res  TYPE abap_bool,
          lv_has_role_tax  TYPE abap_bool,
          lv_has_role_acc  TYPE abap_bool,
          lv_has_role_eio  TYPE abap_bool,
          lv_has_role_tri  TYPE abap_bool,
          lv_has_role_edu  TYPE abap_bool,
          lv_has_role_emp  TYPE abap_bool,
          lv_has_role_test TYPE abap_bool,
          lt_receipts      TYPE TABLE OF zstv_eksh_bapitrvreo,
          ls_framedata     TYPE  zstv_eksh_framedata,
          lt_addinfo       TYPE TABLE OF bapitraddi,
          lt_costdist_trip TYPE TABLE OF  bapitrvcot,
          lv_temp          TYPE string,
          lv_zzfistl       TYPE zetv_eksh_fistl,
          lv_fistl         TYPE ptp02-zzfistl,
          lv_kostl         TYPE csks-kostl,
          lv_bukrs         TYPE bukrs,
          lt_p0001         TYPE TABLE OF p0001,
          lt_p0002         TYPE TABLE OF p0002,
          ls_p0002         TYPE p0002,
          ls_p0001         TYPE p0001,
          lt_p0017         TYPE TABLE OF p0017,
          ls_p0017         TYPE p0017,
*          lv_user          TYPE uname,
          lt_advances      TYPE TABLE OF zstv_eksh_advances,
          lv_user_pernr    TYPE persno.


    DEFINE m_read_inf.
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = &1
          infty     = &2
          begda     = sy-datum
          endda     = sy-datum
        TABLES
          infty_tab = &3.
      READ TABLE &3 INDEX 1 INTO &4.
    END-OF-DEFINITION.

    DEFINE m_check_role.
*    clear: lv_has_role_acc, lv_has_role_res, lv_has_role_tax.
*    lv_mask = &1 && '%'.
      SELECT SINGLE agr_name
       INTO @lv_temp
        FROM agr_users
        WHERE uname = @iv_user"sy-uname
          AND from_dat <= @sy-datum
          AND to_dat >= @sy-datum
          AND agr_name LIKE @&1
        .
      IF sy-subrc = 0.
        &2 = abap_true.
      ELSE.
        &2 = abap_false.
      ENDIF.
    END-OF-DEFINITION.
    DEFINE m_get_citizenship.
      SELECT SINGLE natio50
            INTO &2
            FROM t005t
            WHERE spras = 'R'
              AND land1 = &1.
    END-OF-DEFINITION.
    IF sy-sysid = 'HR3'.
      lv_role_acc = c_test_role_acc.
      lv_role_tax = c_test_role_tax.
      lv_role_emp = c_test_role_emp.
      lv_role_eio = c_test_role_eio.
      lv_role_tri = c_test_role_trip.
      lv_role_edu = c_test_role_edu.
    ELSE.
      lv_role_acc = c_role_acc.
      lv_role_tax = c_role_tax.
      lv_role_emp = c_role_emp.
      lv_role_eio = c_role_eio.
      lv_role_tri = c_role_trip.
      lv_role_edu = c_role_edu.
    ENDIF.

    IF iv_appid EQ 'AVA'.
      m_check_role lv_role_acc lv_has_role_acc.
      m_check_role lv_role_tax lv_has_role_tax.
    ENDIF.
    m_check_role lv_role_emp lv_has_role_emp.
    m_check_role lv_role_eio lv_has_role_eio.
    m_check_role lv_role_tri lv_has_role_tri.
    m_check_role lv_role_edu lv_has_role_edu.

    DATA: _bipernr     TYPE REF TO zhr_objbif_pernr,
          _biplans     TYPE REF TO zhr_objbif_plans,
          _biorgeh     TYPE REF TO zhr_objbif_orgeh,
          lt_user_info TYPE pernr_us_tab.
    IF cv_pernr IS INITIAL.
*    CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
*      EXPORTING
*        user              = lv_user
*        iv_with_authority = 'X'
*      TABLES
*        ee_tab            = lt_user_info.
*    cv_pernr         = lt_user_info[ 1 ]-pernr.
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
        EXPORTING
          user_name               = CONV uname( iv_user )
        IMPORTING
          employeenumber          = cv_pernr
        EXCEPTIONS
          no_employeenumber_found = 1
          subtype_not_available   = 2
          OTHERS                  = 3.
    ENDIF.
    IF cv_subty IS INITIAL.
      cv_subty = '21'.
    ENDIF.

    CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
      EXPORTING
        otype  = c_otype_p
        objid  = cv_pernr
        datum  = sy-datum
      CHANGING
        result = _bipernr
      EXCEPTIONS
        OTHERS = 1.
    IF _bipernr IS NOT INITIAL.
      TRY.
          _bipernr->get_orgass(
            EXPORTING
              adatum = sy-datum
            IMPORTING
              resplans = _biplans
              resorgeh = _biorgeh
        ).
*         Наименование должности
          IF _biplans IS NOT INITIAL.
            DATA(lv_plnam) = _biplans->get_name( adatum = sy-datum anoauth = abap_true ).
          ENDIF.
          IF _biorgeh IS NOT INITIAL.
            DATA(lv_orgna) = _biorgeh->get_name( adatum = sy-datum anoauth = abap_true ).
*          data: _orgpath  type zhr_objbif_objec_orgpath_t,
*                it_attrib type table of pt1222.
*          _biorgeh->get_orgpath(
*                     exporting
*                       aworigin = 'X'
*                       adatum = sy-datum
*                     importing
*                       result = _orgpath[]
*                     ).
*          sort _orgpath by pobid descending.
          ENDIF.
        CATCH cx_root.
      ENDTRY.
    ENDIF.
* Раскомментировать, когда проверят пользователя TEST00004951
*  call function 'Z_TV_BAPI_TRIP_GET_DETAILS'
*    exporting
*      employeenumber          = cv_pernr
*      tripnumber              = iv_reinr
*   IMPORTING
*     FRAMEDATA               = ls_framedata
*   TABLES
*     RECEIPTS                = lt_receipts
*     ADDINFO                 = lt_addinfo
*     COSTDIST_TRIP           = lt_costdist_trip.
    DATA: lt_costdist TYPE TABLE OF bapitrvcot.
    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = cv_pernr
        tripnumber     = iv_reinr
      IMPORTING
        framedata      = ls_framedata
      TABLES
        advances       = lt_advances
        receipts       = lt_receipts
        addinfo        = lt_addinfo
        costdist_trip  = lt_costdist.
    m_read_inf cv_pernr '0001' lt_p0001 ls_p0001.
    IF lt_receipts[] IS NOT INITIAL.
      lv_fistl = VALUE #( lt_receipts[ 1 ]-zzfistl OPTIONAL ).
    ELSE.
      SELECT SINGLE *
        FROM ptrv_perio
        INTO @DATA(ls_perio)
        WHERE pernr = @cv_pernr AND reinr = @iv_reinr.
*    m_read_inf cv_pernr '0001' lt_p0001 ls_p0001.
      m_read_inf cv_pernr '0017' lt_p0017 ls_p0017.
      lv_kostl = ls_p0001-kostl. "COND #( WHEN ls_p0001-kostl IS NOT INITIAL THEN ls_p0001-kostl ELSE ls_p0017-kostl ).
      lv_bukrs = COND #( WHEN ls_p0001-bukrs IS NOT INITIAL THEN ls_p0001-bukrs ELSE ls_p0017-bukrs ).
      CALL FUNCTION 'Z_FITV_FISTL_GET'
        EXPORTING
          comp_code      = ls_p0001-bukrs
          costcenter     = lv_kostl
          employeenumber = cv_pernr
          dep_date       = ls_perio-pdatv
        IMPORTING
          funds_ctr      = lv_fistl.
    ENDIF.

    SELECT SINGLE ptrv_head~reinr AS reinr,
            ptrv_head~datv1 AS datebegin,
            ptrv_head~datb1 AS dateend,
            zhrt_ui_trip~status_1 AS status_1,
            zhrt_ui_trip~status_2 AS status_2,
            zhrt_ui_trip~trip_report,
            zhrt_ui_trip~approver AS approver,
*          ftpt_req_head~status as status_1,
            ptrv_head~zland AS country,
*          ptrv_head~kunde AS reason_text,
            ptrv_head~pernr AS pernr,
            ptrv_head~zzzuonr,
            ptrv_head~kztkt,
            hrp1000~stext AS position,
            pa0001~bukrs,
*          pa0002~nachn && @space && pa0002~vorna && @space && pa0002~midnm as fio,
*          pa0290~seria as seria,
*          pa0290~seri0 as seri0,
*          pa0290~nomer as nomer,
*          pa0290~passl as passl,
*          pa0290~datbg as datbg,
*          pa0290~pcode as pcode,
*          pa0290~subty as subty,
            zhrt_ui_trip_st~type AS statustext1,
            zhrt_ui_trip_st~text AS statustext2,
*          dd07v~ddtext AS statustext,
            zhrt_ui_trip~author,
            zhrt_ui_trip~trip_goal AS trip_goal,
            zhrt_ui_trip~trip_type AS trip_type,
            zhrt_ui_trip~mobile_phone AS mobile_phone,
            zhrt_ui_trip~edit_flag AS edit_flag,
*          zhrt_ui_trip~agreement_file as agreement_file,
*          zhrt_ui_trip~reason_file as reason_file,
*          zhrt_ui_trip~scan_file as scan_file,
            zhrt_ui_trip~adv_payment,
            zhrt_ui_trip~pers_resp_text,
            zhrt_ui_trip~pers_resp,
            zhrt_ui_trip~reason_trip,
            zhrt_ui_trip~directive_comment,
            zhrt_ui_trip~seria,
            zhrt_ui_trip~seri0,
            zhrt_ui_trip~nomer,
            zhrt_ui_trip~passl,
            zhrt_ui_trip~passl2,
            zhrt_ui_trip~issue_date,
            zhrt_ui_trip~pcode,
            zhrt_ui_trip~subty,
            zhrt_ui_trip~name_pass AS name,
            zhrt_ui_trip~last_name_pass AS surname,
            zhrt_ui_trip~daten AS expire_date,
            zhrt_ui_trip~citizenship,
            zhrt_ui_trip~manual_pass AS manualpass,
            ftpt_req_head~zzsdescr_code,
            ftpt_req_head~zzbasic_trip AS basic_trip,
            zhrt_ui_trip~night_work,
            zhrt_ui_trip~overtime_work,
            zhrt_ui_trip~issue_date AS datbg,
            zhrt_ui_trip~reserv_dt_close,
            zhrt_ui_trip~req_change_rs,
            zhrt_ui_trip~remind_reserv,
            zhrt_ui_trip~reserv_st,
            CAST( ' ' AS CHAR( 100 ) ) AS reserv_st_text,
            zhrt_ui_trip~reserv_uname AS executor,
            zhrt_ui_trip~tax_appr,
            zhrt_ui_trip~tax_uname,
            zhrt_ui_trip~acc_uname,
            zhrt_ui_trip~visa,
            zhrt_ui_trip~past_trip,
            zhrt_ui_trip~edu_appr_flag,
            zhrt_ui_trip~history_objectid,
            ftpt_req_head~location_end AS city
      INTO @DATA(ls_entity)
      FROM ptrv_head
      LEFT JOIN pa0001 ON ptrv_head~pernr = pa0001~pernr AND pa0001~endda >= @sy-datum AND pa0001~begda <= @sy-datum
      LEFT JOIN pa0002 ON ptrv_head~pernr = pa0002~pernr AND pa0002~endda >= @sy-datum
      LEFT JOIN hrp1000 ON pa0001~plans = hrp1000~objid AND hrp1000~otype = 'S'
      LEFT JOIN pa0290 ON ptrv_head~pernr = pa0290~pernr AND pa0290~subty = @cv_subty AND pa0290~endda >= @sy-datum
      LEFT JOIN ftpt_req_head ON ptrv_head~reinr = ftpt_req_head~reinr
*    LEFT JOIN ZTHR_TR_STATUS ON ftpt_req_head~status = ZTHR_TR_STATUS~status
*    LEFT JOIN dd07v ON ftpt_req_head~status = dd07v~domvalue_l AND dd07v~ddlanguage = @sy-langu AND dd07v~domname = 'FTPD_PSTAT'
      LEFT JOIN zhrt_ui_trip ON zhrt_ui_trip~reinr = ptrv_head~reinr
      LEFT JOIN zhrt_ui_trip_st ON zhrt_ui_trip~status_1 = zhrt_ui_trip_st~status_1 AND zhrt_ui_trip~status_2 = zhrt_ui_trip_st~status_2
*    left join ftpt_req_reason on ftpt_req_reason~reinr = ptrv_head~reinr
*      and ftpt_req_reason~pernr = ptrv_head~pernr
    WHERE ptrv_head~pernr = @cv_pernr
      AND ptrv_head~reinr = @iv_reinr.
    IF ls_entity-subty IS NOT INITIAL.
      cv_subty = ls_entity-subty.
    ENDIF.
    SELECT SINGLE waers FROM t001 WHERE bukrs = @ls_entity-bukrs INTO @cs_entity-waers.

    CASE ls_entity-reserv_st.
      WHEN '1'.
        ls_entity-reserv_st_text = 'Заявка открыта'.
      WHEN '2'.
        ls_entity-reserv_st_text = 'Заявка взята в работу'.
      WHEN '3'.
        ls_entity-reserv_st_text = 'Заявка на корректировке'.
      WHEN '4'.
        ls_entity-reserv_st_text = 'Бронирование на подтверждении'.
      WHEN '5'.
        ls_entity-reserv_st_text = 'Бронирование подтверждено'.
      WHEN '6'.
        ls_entity-reserv_st_text = 'Бронирование завершено'.
      WHEN '7'.
        ls_entity-reserv_st_text = 'Отмена бронирования'.
      WHEN '8'.
        ls_entity-reserv_st_text = 'Бронирование отклонено'.
    ENDCASE.
*    AND ptrv_head~plan_request = 'R'.
    SELECT text FROM ftpt_req_reason WHERE pernr = @cv_pernr AND reinr = @iv_reinr INTO TABLE @DATA(lt_reason).

    MOVE-CORRESPONDING ls_entity TO cs_entity.
    cs_entity-pernr = cv_pernr.
    cs_entity-position = lv_plnam.
    cs_entity-department = lv_orgna.
    cs_entity-zzfistl = lv_fistl.
    cs_entity-reason_text = ls_entity-reason_trip.
    CLEAR cs_entity-reason_text.
    LOOP AT lt_reason ASSIGNING FIELD-SYMBOL(<reason>).
      cs_entity-reason_text = |{ cs_entity-reason_text } { <reason>-text }|.
    ENDLOOP.

    CASE cs_entity-status_1.
      WHEN 1.
        cs_entity-statustext1 = 'Заявка на командировку'.
      WHEN 2.
        cs_entity-statustext1 = 'Изменение командировки'.
      WHEN 3.
        cs_entity-statustext1 = 'Отмена командировки'.
      WHEN 4.
        cs_entity-statustext1 = 'Отчет по командировке'.
      WHEN 5.
        cs_entity-statustext1 = 'Авансовый отчет'.
      WHEN OTHERS.
    ENDCASE.
    DATA: _p0002 TYPE TABLE OF p0002,
          _p0017 TYPE TABLE OF p0017.
*  loop at it_subtypes assigning field-symbol(<it_subtypes>).
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = cv_pernr
        infty     = '0002'
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = _p0002.
*      if sy-subrc = 0.
    IF lt_costdist[] IS NOT INITIAL.
      cs_entity-kostl = VALUE #( lt_costdist[ 1 ]-costcenter OPTIONAL ).
    ELSE.
*    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
*    CALL FUNCTION 'HR_READ_INFOTYPE'
*      EXPORTING
*        pernr     = cv_pernr
*        infty     = '0017'
*        begda     = sy-datum
*        endda     = sy-datum
*      TABLES
*        infty_tab = _p0017.
      cs_entity-kostl = ls_p0001-kostl.
    ENDIF.
    IF _p0002 IS NOT INITIAL.

      DATA: lv_surname TYPE pad_nachn,
            lv_name    TYPE pad_vorna,
            lv_midname TYPE pad_midnm,
            lv_natio   TYPE landx50,
            lv_nati2   TYPE landx50,
            lv_nati3   TYPE landx50.

      lv_surname = VALUE #( _p0002[ 1 ]-nachn OPTIONAL ).
      lv_name  = VALUE #( _p0002[ 1 ]-vorna OPTIONAL ).
      lv_midname = VALUE #( _p0002[ 1 ]-midnm OPTIONAL ).
      CONCATENATE lv_surname lv_name lv_midname
      INTO cs_entity-fio
      SEPARATED BY space.

      lv_natio = VALUE #( _p0002[ 1 ]-natio OPTIONAL ).
      lv_nati2 = VALUE #( _p0002[ 1 ]-nati2 OPTIONAL ).
      lv_nati3 = VALUE #( _p0002[ 1 ]-nati3 OPTIONAL ).

*    m_get_citizenship lv_natio CS_entity-citizenship.
      m_get_citizenship lv_nati2 cs_entity-citizenship2.
      m_get_citizenship lv_nati3 cs_entity-citizenship3.

    ENDIF.
*  if ls_entity-manualpass = abap_false.
    DATA _p0290 TYPE TABLE OF p0290.

    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = cv_pernr
        infty     = '0290'
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = _p0290.
    IF sy-subrc = 0.

    ENDIF.
*
    IF _p0290 IS NOT INITIAL.
      LOOP AT _p0290 ASSIGNING FIELD-SYMBOL(<_p0290>) WHERE subty = cv_subty.
        cs_entity-seria = <_p0290>-seria.
        cs_entity-seri0 = <_p0290>-seri0.
        cs_entity-nomer = <_p0290>-nomer.
        cs_entity-passl = <_p0290>-passl.
        cs_entity-passl2 = <_p0290>-passl2.
        cs_entity-datbg = <_p0290>-datbg.
        cs_entity-expire_date = <_p0290>-daten.
        cs_entity-pcode = <_p0290>-pcode.
        cs_entity-subty = <_p0290>-subty.
      ENDLOOP.
      IF <_p0290> IS ASSIGNED.
        IF <_p0290>-daten IS INITIAL AND cv_subty EQ '21'.
          DATA: lv_20dat      TYPE sy-datum,
                lv_45dat      TYPE sy-datum,
                lv_pass_daten TYPE sy-datum,
                lv_years      TYPE t5a4a-dlyyr VALUE 20,
                lv_months     TYPE t5a4a-dlymo VALUE 0,
                lv_days       TYPE t5a4a-dlydy VALUE 0.
          DATA(lv_gbdat) = VALUE #( _p0002[ 1 ]-gbdat OPTIONAL ).
          CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
            EXPORTING
              date      = lv_gbdat
              days      = lv_days
              months    = lv_months
              signum    = '+'
              years     = lv_years
            IMPORTING
              calc_date = lv_20dat.
          IF sy-datum < lv_20dat.
            lv_pass_daten = lv_20dat.
          ELSE.
            lv_years = 45.
            CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
              EXPORTING
                date      = lv_gbdat
                days      = lv_days
                months    = lv_months
                signum    = '+'
                years     = lv_years
              IMPORTING
                calc_date = lv_45dat.
            IF sy-datum < lv_45dat.
              lv_pass_daten = lv_45dat.
            ELSE.
              lv_pass_daten = '99991231'.
            ENDIF.
          ENDIF.
          cs_entity-expire_date = lv_pass_daten.
        ENDIF.
        UNASSIGN <_p0290>.
      ENDIF.
    ENDIF.
    IF lv_has_role_emp = abap_true.
      cs_entity-role = 'emp'.
    ENDIF.
    IF lv_has_role_acc = abap_true AND iv_appid EQ 'AVA'.
      cs_entity-role = 'acc'.
    ENDIF.
    IF lv_has_role_tax = abap_true AND iv_appid EQ 'AVA'.
      cs_entity-role = 'tax'.
    ENDIF.
    IF lv_has_role_eio = abap_true AND iv_appid NE 'AVA'.
      cs_entity-role = 'eio'.
    ENDIF.
    IF lv_has_role_tri = abap_true AND iv_appid NE 'AVA'.
      cs_entity-role = 'tri'.
    ENDIF.
    IF lv_has_role_edu = abap_true AND iv_appid NE 'AVA'.
      cs_entity-role = 'edu'.
    ENDIF.
    IF iv_reinr IS INITIAL OR iv_reinr = '0000000000'.
      CLEAR:
            cs_entity-datebegin,
            cs_entity-dateend,
            cs_entity-status_1,
            cs_entity-status_2,
            cs_entity-approver,
            cs_entity-country,
            cs_entity-reason_text,
            cs_entity-statustext1,
            cs_entity-statustext2,
            cs_entity-trip_goal,
            cs_entity-trip_type,
            cs_entity-mobile_phone,
            cs_entity-agreement_file,
            cs_entity-reason_file,
            cs_entity-scan_file,
            cs_entity-pers_resp_text,
            cs_entity-pers_resp_file,
            cs_entity-reason_trip,
            cs_entity-directive_comment.
      cs_entity-edit_flag = abap_true.
      cs_entity-subty = cv_subty.
      cs_entity-trip_goal = ''.
      cs_entity-trip_type = ''.
    ENDIF.

    IF ( ls_entity-approver EQ iv_user
      OR ( ls_entity-tax_uname EQ iv_user AND ls_entity-tax_appr EQ abap_false )
      OR ( ls_entity-acc_uname EQ iv_user AND ls_entity-tax_appr EQ abap_true ) )
      AND ls_entity-status_2 NE '8' AND ls_entity-status_2 NE '13' AND ls_entity-status_2 NE '4'.
      cs_entity-change_flag = abap_true.
    ENDIF.
    IF ls_entity-trip_goal EQ '011' AND ls_entity-approver EQ iv_user AND ls_entity-edu_appr_flag IS NOT INITIAL.
      cs_entity-change_flag = abap_true.
    ENDIF.
    cs_entity-tzone = sy-zonlo.

* кнопка сформировать приказ
    IF ( lv_has_role_tri EQ abap_true OR ls_entity-approver EQ iv_user OR iv_user EQ ls_entity-author )
      AND ( ls_entity-status_2 EQ '10' OR ( ls_entity-status_1 EQ '4' OR ls_entity-status_1 EQ '5' ) ).
      cs_entity-button_order_form = abap_true.
    ENDIF.
* Ручной ввод суточных (инвертируем флаг)
    cs_entity-daily_hand = COND #( WHEN ls_framedata-pd_meals IS INITIAL THEN abap_true ELSE abap_false ).
* Перевыставление
    cs_entity-re_exp = ls_framedata-zzreinv.
* Внутренний заказ
    cs_entity-order = VALUE #( lt_costdist[ 1 ]-order OPTIONAL ).
* Статус сметы
    cs_entity-status_cost = cs_entity-status_cost_text = VALUE #( lt_advances[ 1 ]-zzzplst OPTIONAL ).
* Убытки прошлых лет
    cs_entity-zzpvlos = ls_framedata-zzpvlos.
* Дата утверждения
    cs_entity-date_approval = ls_framedata-exchange_date.
* МВЗ
    IF ls_framedata-zzfistl IS NOT INITIAL.
      cs_entity-zzfistl = lv_fistl = ls_framedata-zzfistl.
    ENDIF.
* УЧ/НУ
    cs_entity-zznuuch = ls_framedata-zznuuch.
* Договор
    cs_entity-zzzuonr = ls_framedata-zzzuonr.
* Флаг для кнопки повторного создания ЗПЛ
    IF ( ls_entity-status_1 = '1' AND ls_entity-status_2 >= '8' )
    OR ls_entity-status_1 EQ '4' OR ls_entity-status_1 EQ '5'.
      DATA(lv_ebeln) = VALUE #( lt_advances[ 1 ]-zzzplnr OPTIONAL ).
      IF lv_ebeln IS INITIAL.
        cs_entity-restart_zpl = abap_true.
      ENDIF.
    ENDIF.
* Флаги для приказов
    IF cs_entity-reinr IS NOT INITIAL.
      DATA: lt_p0298 TYPE TABLE OF p0298.
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = cv_pernr
          infty     = '0298'
*         begda     = sy-datum
*         endda     = sy-datum
        TABLES
          infty_tab = lt_p0298.
      LOOP AT lt_p0298 ASSIGNING FIELD-SYMBOL(<p0298>) WHERE reinr = cs_entity-reinr.
        CASE <p0298>-massn.
          WHEN 'YH'.
            cs_entity-order_cancell = abap_true.
          WHEN 'Y6'.
            cs_entity-order_change = abap_true.
          WHEN OTHERS.
        ENDCASE.
      ENDLOOP.
    ENDIF.
* ФИО согласующего
    IF ls_entity-approver IS NOT INITIAL.
      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
        EXPORTING
          user_name               = CONV uname( ls_entity-approver )
        IMPORTING
          employeenumber          = cv_pernr
        EXCEPTIONS
          no_employeenumber_found = 1
          subtype_not_available   = 2
          OTHERS                  = 3.
      IF cv_pernr IS NOT INITIAL.
        m_read_inf cv_pernr '0002' lt_p0002 ls_p0002.
        IF lt_p0002[] IS NOT INITIAL.
          cs_entity-fio_appr = |{ ls_p0002-nachn } { ls_p0002-vorna+0(1) }. { ls_p0002-midnm+0(1) }.|.
        ENDIF.
      ENDIF.
    ENDIF.
* Взять в работу для специалиста по обучению
    IF lv_has_role_edu = abap_true AND ls_entity-edu_appr_flag EQ abap_true.
      cs_entity-in_job_flag = COND #( WHEN ls_entity-approver IS INITIAL THEN abap_true ELSE abap_false ).
    ENDIF.
* Текст отчета о командировке
    DATA: lv_textname TYPE tdobname,
          lv_text     TYPE string.   " del NaumovSM откатил для переноса
*        lv_text     TYPE ZHRE_UI_TRIP_TRIPREPORT.   " ins NaumovSM откатил для переноса
    lv_textname = ls_entity-history_objectid.
    CALL METHOD read_text(
      IMPORTING
        iv_text_id = lv_textname
      CHANGING
        cv_text    = lv_text ).
    IF lv_text IS NOT INITIAL.
      cs_entity-trip_report = lv_text.
    ENDIF.
    lv_textname = 'OC' && ls_entity-history_objectid.
    CALL METHOD read_text(
      IMPORTING
        iv_text_id = lv_textname
      CHANGING
        cv_text    = lv_text ).
    IF lv_text IS NOT INITIAL.
      cs_entity-reason_trip = lv_text.
    ENDIF.

    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
      EXPORTING
        user_name               = CONV uname( sy-uname )
      IMPORTING
        employeenumber          = cs_entity-user_pernr
      EXCEPTIONS
        no_employeenumber_found = 1
        subtype_not_available   = 2
        OTHERS                  = 3.
* Флаг что пользователь имеет роль поддержки
    m_check_role c_role_cons cs_entity-support_flag.
    IF cs_entity-support_flag IS INITIAL.
      m_check_role c_role_support cs_entity-support_flag.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT=>GET_HISTORY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_PERNR                       TYPE        PERSNO
* | [--->] IV_REINR                       TYPE        REINR
* | [--->] IV_APP_ID                      TYPE        ZHRE_APPID
* | [<-->] CT_TRIP                        TYPE        ZHR_UI_TRIP_T
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_history.
    DATA: lt_history TYPE TABLE OF cdred,
          ls_trip    TYPE zhrt_ui_trip,
          lv_skip    TYPE abap_bool,
          lr_app_id  TYPE RANGE OF zhre_appid.
    FIELD-SYMBOLS: <trip> TYPE zhrt_ui_trip.
    CONSTANTS: lc_obj_class TYPE cdobjectcl VALUE 'ZHR_FIO_TRIP'.

* { ins NaumovSM " считываем косячные номера командировок для которых необходимо выравнивание статусов
    DATA(lr_hist_stat) = zcl_tvarvc=>read( i_name = 'ZHR_FI_TV_REQ_HIST_STAT' i_type = 'S' ).   " ins NaumovSM
    LOOP AT lr_hist_stat ASSIGNING FIELD-SYMBOL(<ls_hist_stat>).
      <ls_hist_stat>-sign = 'I'.
      <ls_hist_stat>-option = 'EQ'.
    ENDLOOP.
* } ins NaumovSM

    CASE iv_app_id.
      WHEN 'REQ'.
*        APPEND VALUE #( sign = 'E' option = 'EQ' low = 'REP' )
*           TO lr_app_id.
**        APPEND VALUE #( sign = 'E' option = 'EQ' low = 'APP' )
**           TO lr_app_id.
      WHEN 'APP'.
*        APPEND VALUE #( sign = 'E' option = 'EQ' low = 'REP' )
*           TO lr_app_id.
*        APPEND VALUE #( sign = 'E' option = 'EQ' low = 'REQ' )
*           TO lr_app_id.

* { ins NaumovSM
*        IF iv_reinr IN lr_hist_stat.
*          APPEND VALUE #( sign = 'E' option = 'EQ' low = 'RES' )
*             TO lr_app_id.
*          APPEND VALUE #( sign = 'E' option = 'EQ' low = 'REQ' )
*             TO lr_app_id.
*        ENDIF.
* } ins NaumovSM
    ENDCASE.

    CALL FUNCTION 'CHANGEDOCUMENT_READ'
      EXPORTING
        objectclass = lc_obj_class
        objectid    = CONV cdobjectv( iv_pernr && iv_reinr ) "l_obj_id
      TABLES
        editpos     = lt_history
      EXCEPTIONS
        OTHERS      = 1.

**    LOOP AT lt_history ASSIGNING FIELD-SYMBOL(<ls_history>) GROUP BY ( key1 = <ls_history>-changenr ).
***                                                                       key1 = <ls_history>-udate
***                                                                       key2 = <ls_history>-utime ).
**      lv_skip = abap_true.
**      LOOP AT GROUP <ls_history> ASSIGNING FIELD-SYMBOL(<ls_member>).
***        IF lv_app_id = 'RES'.
**        IF <ls_member>-fname = 'APP_ID'.
**          CHECK <ls_member>-f_new IN lr_app_id. " = lv_app_id.
**          lv_skip = abap_false.
**        ENDIF.
***        ELSE.
***          lv_skip = abap_false.
***        ENDIF.
**        ASSIGN COMPONENT <ls_member>-fname OF STRUCTURE ls_trip TO FIELD-SYMBOL(<lv_new>).
**        IF sy-subrc = 0.
**          <lv_new> = <ls_member>-f_new.
**
****          if <ls_member>-fname = 'APP_ID'.
****            ls_trip-app_id = <ls_member>-f_old 'RES'.
****          endif.
**        ENDIF.
**      ENDLOOP.
***      IF lv_skip = abap_false OR iv_app_id IS INITIAL.
***        APPEND ls_trip TO ct_trip.
***      ENDIF.
**      IF ls_trip-app_id IN lr_app_id OR iv_app_id IS INITIAL.
**        APPEND ls_trip TO ct_trip.
**      ENDIF.
**    ENDLOOP.
**    SORT ct_trip BY rdate ASCENDING rtime ASCENDING.



*    DELETE lt_history WHERE chngind = 'I'.

    SELECT SINGLE * FROM zhrt_ui_trip WHERE reinr = @iv_reinr AND pernr = @iv_pernr INTO @ls_trip.

    DATA(ls_actual_trip) = ls_trip.

    SORT lt_history BY udate DESCENDING utime DESCENDING.

    ADD 2 TO ls_trip-rtime.   " ins NaumovSM
*    IF ls_trip-edu_appr_flag = 'X' AND
*       ls_trip-approver IS INITIAL.
*      CLEAR ls_trip-edu_appr_flag.
*    ENDIF.

*    APPEND ls_trip TO ct_trip ASSIGNING FIELD-SYMBOL(<lv_first_trip>).   " ins NaumovSM
    APPEND ls_trip TO ct_trip ASSIGNING <trip>.   " del NaumovSM\

*    CLEAR ls_trip-deleg.
*    CLEAR ls_trip-edu_appr_flag.

** { ins NaumovSM   " на будущее, в случае если нужно будет чистить множество полей
*    DATA : lt_descr       TYPE abap_compdescr_tab.
*    DATA : lref_descr     TYPE REF TO cl_abap_structdescr.
*
** Get the structure of the table.
*    lref_descr ?= cl_abap_typedescr=>describe_by_data( ls_trip ).
*
*    lt_descr[] = lref_descr->components[].
*    DATA: lv_deleg          LIKE ls_trip-deleg.
*    DATA: lv_edu_appr       LIKE ls_trip-edu_appr_flag.
*    DATA: lv_clear_edu      TYPE i.

*    lv_edu_appr = <lv_first_trip>-edu_appr_flag.
*    lv_deleg    = <lv_first_trip>-deleg.

    LOOP AT lt_history TRANSPORTING NO FIELDS WHERE fname = 'EDU_APPR_FLAG'.
      EXIT.
    ENDLOOP.
    IF sy-subrc <> 0.
      CLEAR: ls_trip-edu_appr_flag.
*      DATA(lv_no_edu) = 'X'.
    ENDIF.

** } ins NaumovSM
    LOOP AT lt_history ASSIGNING FIELD-SYMBOL(<ls_history>) GROUP BY ( key1 = <ls_history>-udate
                                                                       key2 = <ls_history>-utime ).
*      CHECK sy-tabix NE 1.
      LOOP AT GROUP <ls_history> ASSIGNING FIELD-SYMBOL(<ls_member>).

        ASSIGN COMPONENT <ls_member>-fname OF STRUCTURE ls_trip TO FIELD-SYMBOL(<lv_old>).
        IF sy-subrc = 0.
* { ins NaumovSM
          CASE <ls_member>-fname.
*            WHEN 'DELEG'.
*              lv_deleg = <ls_member>-f_old.
*              <lv_old> = <ls_member>-f_new.

*            WHEN 'EDU_APPR_FLAG'.
*              lv_edu_appr = <ls_member>-f_old.

            WHEN 'AENAM'.
              <lv_old> = <ls_member>-f_old.
              IF ls_trip-reinr IN lr_hist_stat.  " обработка для исключённых командировок
                IF <ls_member>-f_old IS INITIAL.
                  <lv_old> = <ls_member>-f_new.
                ENDIF.
              ENDIF.

            WHEN 'APP_ID'.
              <lv_old> = <ls_member>-f_old.
              IF <ls_member>-f_old IS INITIAL.
                <lv_old> = <ls_member>-f_new.
              ENDIF.

            WHEN OTHERS.
              <lv_old> = <ls_member>-f_old.

          ENDCASE.
*          IF <ls_member>-fname = 'DELEG'.
*            lv_deleg = <ls_member>-f_new.
*          ELSE.
* } ins NaumovSM
*            <lv_old> = <ls_member>-f_old.
* { ins NaumovSM
* } ins NaumovSM
*        ENDIF.   " ins NaumovSM
        ENDIF.
*        IF <ls_member>-fname EQ 'RDATE'.
*          <lv_old> = <ls_history>-udate.
*        ENDIF.
*        IF <ls_member>-fname EQ 'RTIME'.
*          <lv_old> = <ls_history>-utime.
*        ENDIF.
      ENDLOOP.
      ls_trip-rdate = <ls_history>-udate.
      ls_trip-rtime = <ls_history>-utime.

*      IF ls_trip-aenam IS INITIAL.
*        ls_trip-aenam = <ls_history>-username.
*      ENDIF.
*      IF <ls_history>-chngind EQ 'I'.
****      IF <trip> IS ASSIGNED.
*****        <trip>-rdate = <ls_history>-udate.
***** { ins NaumovSM
*****        IF lv_edu_appr IS NOT INITIAL.
*********          <trip>-edu_appr_flag = lv_edu_appr.
*****          ls_trip-edu_appr_flag = lv_edu_appr.
*****          CLEAR lv_edu_appr.
******           clear <trip>-edu_appr_flag.
*****        ENDIF.
*****
****        IF lv_deleg IS NOT INITIAL.
****          CLEAR <trip>-deleg.
****        ENDIF.
****      ENDIF.

*      IF <lv_first_trip> IS ASSIGNED.
*        IF lv_edu_appr IS NOT INITIAL.
*          <lv_first_trip>-edu_appr_flag = lv_edu_appr.
**          ls_trip-edu_appr_flag = lv_edu_appr.
*          CLEAR lv_edu_appr.
*        ENDIF.
** } ins NaumovSM
*      ENDIF.
*      ELSE.
* { ins NaumovSM " доработка по корректной смене статусов для командировок в tvarvc
      IF ls_trip-reinr IN lr_hist_stat.
        IF <trip> IS ASSIGNED.   " если второй статус сменён в меньшую сторону то меняем статус на +1
* ВНИМАНИЕ, ДАННАЯ ДОРАБОТКА ДЛЯ ОТКЛОНЕНИЙ ЗАЯВОК (штатной смены 2 статуса на меньшее значение) ОТРАБОТАЕТ НЕКОРРЕКТНО!!!
          IF <trip>-status_2 < ls_trip-status_2 AND <trip>-status_1 <> '1'.
            CASE <trip>-status_1.
              WHEN '4'.
                ls_trip-status_1 = <trip>-status_1 - 2.
                IF <trip>-status_2  =  '01'.
                  <trip>-status_1 = '2'.
                  <trip>-status_2 = '08'.
                ENDIF.
              WHEN '2'.
                IF ls_trip-status_2  <>  '02'.
                  ls_trip-status_1 = <trip>-status_1 - 1.
                ENDIF.
              WHEN OTHERS.
                ls_trip-status_1 = <trip>-status_1 - 1.
            ENDCASE.
          ENDIF.

          IF <trip>-status_1 = ls_trip-status_1 AND
             <trip>-status_2 = ls_trip-status_2 AND
             <trip>-aenam    = ls_trip-aenam.
            CONTINUE.
          ENDIF.

          IF ( <trip>-status_1 = '4' AND <trip>-status_2 = '8' ) OR
             ( <trip>-status_1 = '1' AND <trip>-status_2 = '10' ).
            IF ls_trip-approver IS NOT INITIAL.
              <trip>-aenam = ls_trip-approver.
              <trip>-rdate = ls_trip-rdate.
              <trip>-rtime = ls_trip-rtime + 1.
            ENDIF.
          ENDIF.

        ENDIF.
      ENDIF.
* } ins NaumovSM " доработка по корректной смене статусов для командировок в tvarvc

      IF    ls_trip-status_1 = <trip>-status_1 AND
            ls_trip-status_2 = <trip>-status_2 AND
            ls_trip-aenam    = <trip>-aenam    AND
            ls_trip-deleg    = <trip>-deleg    AND
            ls_trip-approver = <trip>-approver.
        IF <trip> IS ASSIGNED.
          <trip> = ls_trip.
        ENDIF.
      ELSE.
        APPEND ls_trip TO ct_trip ASSIGNING <trip>.
      ENDIF.

* { ins NaumovSM исправление ситуации с прокидыванием поля EDU_APPR_FLAG
    ENDLOOP.

*      IF lv_deleg IS NOT INITIAL.
*        ls_trip-deleg = lv_deleg.
**          <trip>-deleg = lv_deleg.
*        CLEAR lv_deleg.
**        CLEAR <trip>-deleg.
**          CLEAR ls_trip-deleg.
*      ELSE.
*        CLEAR ls_trip-deleg.
*      ENDIF.

**************
*      IF lv_edu_appr IS NOT INITIAL.
*        ls_trip-edu_appr_flag = lv_deleg.
*        CLEAR lv_edu_appr.
**        CLEAR <trip>-edu_appr_flag.
*      ELSE.
*        CLEAR ls_trip-edu_appr_flag.
*      ENDIF.
**************

*      IF <trip> IS ASSIGNED.
*
*      IF lv_edu_appr IS NOT INITIAL.
**        <trip>-edu_appr_flag = lv_edu_appr.
**        CLEAR lv_edu_appr.
*      ELSE.
*        CLEAR <trip>-edu_appr_flag.
*      ENDIF.
*
*        IF lv_deleg IS NOT INITIAL.
*          <trip>-deleg = lv_deleg.
*          CLEAR lv_deleg.
*        ENDIF.
*
*      ELSE.

*      IF <trip>-edu_appr_flag IS INITIAL.
*      ENDIF.
*
*      ENDIF.
*
*      IF lv_no_edu IS INITIAL.
*        IF lv_clear_edu > 1.
*          CLEAR: ls_trip-edu_appr_flag.
*        ELSE.
*          ADD 1 TO lv_clear_edu.
*        ENDIF.
*      ENDIF.
* } ins NaumovSM исправление ситуации с прокидыванием поля EDU_APPR_FLAG
*      ENDIF.
*    ENDLOOP.

*    LOOP AT ct_trip ASSIGNING FIELD-SYMBOL(<ls_del_edu>) WHERE NOT ( rdate = ls_actual_trip-rdate AND
*                                                                     rtime = ls_actual_trip-rtime ).
*      CLEAR <ls_del_edu>-edu_appr_flag.
*    ENDLOOP.

    IF ls_trip-reinr IN lr_hist_stat.
      IF <trip> IS ASSIGNED.
        ls_trip-status_1 = '1'.
        ls_trip-status_2 = '01'.
        ls_trip-approver = ls_trip-aenam.
        ls_trip-rtime    = ls_trip-rtime - 1.
        APPEND ls_trip TO ct_trip ASSIGNING <trip>.
      ENDIF.
    ENDIF.


    DELETE ct_trip WHERE app_id NOT IN lr_app_id.
    SORT ct_trip BY rdate ASCENDING rtime ASCENDING.
*    DELETE ADJACENT DUPLICATES FROM ct_trip COMPARING rdate rtime.
    DELETE ADJACENT DUPLICATES FROM ct_trip COMPARING rdate rtime aenam approver.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT=>GET_LEADER
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_OBJID                       TYPE        OBJID
* | [--->] IV_DATE                        TYPE        SY-DATUM
* | [<---] ES_LEAD                        TYPE        ZHR_OBJBIF_OBJEC_LEADER_S
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_leader.
    DATA: it_1001   TYPE TABLE OF p1001,
          it_1001_s TYPE TABLE OF p1001.
    DATA: it_objects TYPE TABLE OF hrobject,
          wa_objects TYPE hrobject.

    CLEAR: wa_objects.
    REFRESH it_objects.
    wa_objects-plvar = c_plvar.
    wa_objects-otype = 'O'.
    wa_objects-objid = iv_objid.
    APPEND wa_objects TO it_objects.

* Чтение 1001 ИТ
    REFRESH it_1001[].
    CALL FUNCTION 'RH_READ_INFTY_1001'
      EXPORTING
*       istat           = '1'
*       subty           = 'AZ02'
        begda           = sy-datum
        endda           = sy-datum
        with_stru_auth  = ''
      TABLES
        objects         = it_objects[]
        i1001           = it_1001[]
      EXCEPTIONS
        nothing_found   = 1
        wrong_condition = 2
        OTHERS          = 3.

    LOOP AT it_1001[] ASSIGNING FIELD-SYMBOL(<ls_1001>) WHERE rsign EQ 'B'
                                                          AND relat EQ '012'
                                                          AND sclas EQ 'S'.
      es_lead-plans = CONV objektid( <ls_1001>-sobid ).
      CLEAR: wa_objects.
      REFRESH it_objects.
      wa_objects-plvar = c_plvar.
      wa_objects-otype = 'S'.
      wa_objects-objid = es_lead-plans.
      APPEND wa_objects TO it_objects.

* Чтение 1001 ИТ
      REFRESH it_1001_s[].
      CALL FUNCTION 'RH_READ_INFTY_1001'
        EXPORTING
*         istat           = '1'
*         subty           = 'AZ02'
          begda           = sy-datum
          endda           = sy-datum
          with_stru_auth  = ''
        TABLES
          objects         = it_objects[]
          i1001           = it_1001_s[]
        EXCEPTIONS
          nothing_found   = 1
          wrong_condition = 2
          OTHERS          = 3.
      LOOP AT it_1001_s[] ASSIGNING FIELD-SYMBOL(<ls_1001_s>) WHERE rsign EQ 'A'
                                                                AND relat EQ '008'
                                                                AND sclas EQ 'P'.
        es_lead-pernr = CONV persno( <ls_1001_s>-sobid ).
        EXIT.
      ENDLOOP.
      EXIT.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->GET_REPOSITORY
* +-------------------------------------------------------------------------------------------------+
* | [<-()] RV_REPOSITORY                  TYPE        SAEARCHIVI
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD get_repository.
  SELECT SINGLE archiv_id
    FROM toaom
    INTO @rv_repository
      WHERE sap_object = 'ARCHIVE'
        AND ar_object = 'ZF_ORDER'
        AND ar_status = 'X'.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->GET_VERP
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE        DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD get_verp.
    DATA: lv_reinr         TYPE reinr,
          lv_pernr         TYPE persno,
          lt_receipts      TYPE TABLE OF zstv_eksh_bapitrvreo,
          lt_addinfo       TYPE TABLE OF bapitraddi,
          ls_frame         TYPE zstv_eksh_framedata,
          lt_userdata      TYPE ptrv_bapi_t_userdata,
          lt_costdist_trip TYPE TABLE OF bapitrvcot,
          ls_return        TYPE bapireturn,
          lv_menge         TYPE i,
          lv_index         TYPE i VALUE 1,
          lt_entityset     TYPE zcl_zhr_fi_tv_req_mpc=>tt_prepay.
    DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
    TRY.
        lv_reinr = lt_parameter[ name = 'REINR' ]-value.
        lv_pernr = lt_parameter[ name = 'PERNR' ]-value.
      CATCH cx_root.
    ENDTRY.
* Считываем карты
*    get_cardset( EXPORTING
*                    iv_pernr = lv_pernr
*                  CHANGING
*                    ct_set = lt_card ).
* Регионы
    SELECT * FROM t706o WHERE spras = @sy-langu AND morei = '33' AND land1 = 'RU' INTO TABLE @DATA(lt_region).

    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = lv_pernr
        tripnumber     = lv_reinr
      IMPORTING
        framedata      = ls_frame
        return         = ls_return
      TABLES
        receipts       = lt_receipts
        addinfo        = lt_addinfo
        costdist_trip  = lt_costdist_trip
        userdata       = lt_userdata.
    IF ls_return-code EQ '56804'. "Если все ок
      LOOP AT lt_receipts ASSIGNING FIELD-SYMBOL(<rec>).
*        APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
*        <entity>-reinr = lv_reinr.
*        <entity>-rec_amount = rescale( val = <rec>-rec_amount dec = 0 ).
*        MOVE-CORRESPONDING <rec> TO <entity>.
**        <entity>-zzccard = VALUE #( lt_card[ number = <rec>-zzccard ]-incid OPTIONAL ).
*        CONDENSE <entity>-zzccard NO-GAPS.
*        READ TABLE lt_addinfo INDEX sy-tabix ASSIGNING FIELD-SYMBOL(<add>).
*        IF sy-subrc EQ 0.
*          MOVE-CORRESPONDING <add> TO <entity>.
**          <entity>-region = VALUE #( lt_region[ rgion = <add>-region ]-text25 OPTIONAL ).
*          lv_menge = <add>-multipli.
*          <entity>-zzmenge = lv_menge.
*        ENDIF.
        DATA(lv_fistl) = <rec>-zzfistl.
        lv_index = lv_index + 1.
*        <entity>-zzxndfl = COND #( WHEN <entity>-zzxndfl EQ 'N' THEN abap_true ELSE <entity>-zzxndfl ).
      ENDLOOP.
      lv_fistl = COND #( WHEN lv_fistl IS INITIAL THEN ls_frame-zzfistl ELSE lv_fistl ).
* Добавляем суточные в АО, если они не введены вручную
*      LOOP AT lt_entityset INTO DATA(ls_ent) WHERE exp_type = 'SUTZ' OR exp_type = 'SUTV' .
*        EXIT.
*      ENDLOOP.
      CALL FUNCTION 'Z_FITV_DAILY_EXPENSES_GET'
        EXPORTING
          employeenumber = lv_pernr
          tripnumber     = lv_reinr
*         PERIODNUMBER   =
*         PERIOD_VERSION =
*         TEKEY          =
*         READ_FROM_DB   = ABAP_FALSE
*         EXCHANGE_DATE  = ABAP_FALSE
        IMPORTING
          userdata       = lt_userdata.

      DATA(lv_date) = COND #( WHEN ls_frame-exchange_date IS NOT INITIAL THEN ls_frame-exchange_date ELSE ls_frame-dep_date ).
      LOOP AT lt_userdata ASSIGNING FIELD-SYMBOL(<ud>) WHERE zzspkzl = 'VERP'.
        APPEND INITIAL LINE TO lt_entityset ASSIGNING FIELD-SYMBOL(<entity>).
        <entity>-zznuuch = 'УЧ'.
        <entity>-country = <ud>-zzlndfr.
        <entity>-exp_type = 'VERP'.
        <entity>-rec_amount = <ud>-zzwrbtr.
        <entity>-tax_code = 'Q0'.
        <entity>-rec_curr = <ud>-zzwaers.
        <entity>-receiptno = lv_index.
        <entity>-zzfistl = lv_fistl.
        <entity>-descript = 'Суточные'.
        <entity>-rec_date = lv_date.
        <entity>-reinr = lv_reinr.
        lv_menge = <ud>-zzmenge.
        <entity>-zzmenge = lv_menge.
        lv_index = lv_index + 1.
        CONDENSE <entity>-receiptno NO-GAPS.
        IF <entity>-receiptno < 10.
          <entity>-receiptno = '00' && <entity>-receiptno.
        ELSE.
          <entity>-receiptno = '0' && <entity>-receiptno.
        ENDIF.
      ENDLOOP.
    ENDIF.

    copy_data_to_ref( EXPORTING is_data = lt_entityset
                       CHANGING cr_data = er_data ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->GET_VISA_DEPT
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method GET_VISA_DEPT.
    data: ls_entity type zcl_zhr_fi_tv_req_mpc=>ts_visasupport01,
         lv_pernr type pernr_d,
         lv_werks type persa,
         lt_user_info type PERNR_US_TAB,
         _p0001 type TABLE OF p0001.
    call function 'HR_GET_EMPLOYEES_FROM_USER'
      exporting
        user   = sy-uname
      tables
        ee_tab = lt_user_info.
    lv_pernr = lt_user_info[ 1 ]-pernr.
    call function 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
  call function 'HR_READ_INFOTYPE'
    exporting
*     TCLAS           = 'A'
      pernr           = lv_pernr
      infty           = '0001'
     BEGDA           = sy-datum "'18000101'
     ENDDA           = sy-datum " '99991231'
*     SPRPS           = '*'
*     BYPASS_BUFFER   = ' '
*     LEGACY_MODE     = ' '
*     IMPORTING
*     SUBRC           =
    tables
      infty_tab       = _p0001
    exceptions
      infty_not_found = 1
      invalid_input   = 2
      others          = 3.
  if sy-subrc <> 0.
* Implement suitable error handling here
  endif.
    lv_werks = _p0001[ 1 ]-werks.
    select single dept, email, tel
      from zhrt_tv_visa
      where zhrt_tv_visa~werks = @lv_werks
    into CORRESPONDING FIELDS OF @ls_entity.

      copy_data_to_ref( exporting is_data = ls_entity
                      changing cr_data = er_data ).
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->HASKIDSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_HASKIDS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method haskidsset_get_entityset.
    data: ls_entity    type zcl_zhr_fi_tv_req_mpc=>ts_haskids,
*          lt_entityset type zcl_zhr_fi_tv_req_mpc=>tt_haskids,
          _p0021       type table of p0021,
          lt_user_info type pernr_us_tab.
    types: begin of subtypes,
             subtype type subty,
           end of subtypes.
    data: wa_subtypes type subtypes.
    data: it_subtypes type table of subtypes.
    wa_subtypes-subtype = '5'. append wa_subtypes to it_subtypes.
    wa_subtypes-subtype = '0006'. append wa_subtypes to it_subtypes.
    wa_subtypes-subtype = '0909'. append wa_subtypes to it_subtypes.
    wa_subtypes-subtype = '0910'. append wa_subtypes to it_subtypes.
    data: lv_haskids type abap_bool value abap_false.
    call function 'HR_GET_EMPLOYEES_FROM_USER'
      exporting
        user   = sy-uname
      tables
        ee_tab = lt_user_info.

    data: lv_gbdt   like sy-datum,
          lv_3jgbdt like sy-datum,
          lv_years  type t5a4a-dlyyr value 3,
          lv_months type t5a4a-dlymo,
          lv_days   type t5a4a-dlydy.

    loop at it_subtypes assigning field-symbol(<it_subtypes>).
      call function 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
      call function 'HR_READ_SUBTYPE'
        exporting
          pernr         = lt_user_info[ 1 ]-pernr "'00020483'
          infty         = '0021'
          subty         = <it_subtypes>-subtype
          no_auth_check = 'X'
          begda         = sy-datum
          endda         = sy-datum
        tables
          infty_tab     = _p0021.
      if sy-subrc = 0.
        if lines( _p0021 ) > 0.
          loop at _p0021 assigning field-symbol(<_p0021>).
            call function 'RP_CALC_DATE_IN_INTERVAL'
              exporting
                date      = <_p0021>-fgbdt
                days      = lv_days
                months    = lv_months
                signum    = '+'
                years     = lv_years
              importing
                calc_date = lv_3jgbdt.
            if lv_3jgbdt > sy-datum.
              ls_entity-flag = abap_true.
              exit.
            endif.
          endloop.
        endif.
        if ls_entity-flag = abap_true.
          exit.
        endif.
      endif.
    endloop.

    if ls_entity-flag = abap_true.
      append ls_entity to et_entityset.
    endif.
**try.
*CALL METHOD SUPER->HASKIDSSET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  importing
**    et_entityset             =
**    es_response_context      =
*    .
** catch /iwbep/cx_mgw_busi_exception .
** catch /iwbep/cx_mgw_tech_exception .
**endtry.
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->HOTELCLASSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_HOTELCLASS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method HOTELCLASSSET_GET_ENTITYSET.
  select  TA21HO1~name as name,
          TA21HO1~ROOM_CLASS as code
  from TA21HO1
  where TA21HO1~SPRAS = @sy-langu
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->INTORDERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_INTORDER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD intorderset_get_entityset.
    DATA: lv_pernr TYPE persno,
          lt_p0001 TYPE TABLE OF p0001.
    CONSTANTS lc_auart TYPE aufart VALUE 'ОХР'.
    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    TRY.
*        lv_reinr = lt_keys[ name = 'REINR' ]-value.
        lv_pernr = lt_keys[ name = 'PERNR' ]-value.
      CATCH cx_root.
    ENDTRY.
    CHECK lv_pernr IS NOT INITIAL.
    m_read_inf lv_pernr '0001' lt_p0001.
    CHECK lt_p0001[] IS NOT INITIAL.
    DATA(lv_bukrs) = VALUE #( lt_p0001[ 1 ]-bukrs OPTIONAL ).
    SELECT aufnr FROM m_ordea WHERE kokrs = @lv_bukrs AND auart = @lc_auart INTO TABLE @et_entityset.
    APPEND INITIAL LINE TO et_entityset.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->LOADORDER_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TS_LOADORDER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method LOADORDER_GET_ENTITY.
      DATA: ls_file   TYPE zcl_zhr_fi_tv_req_mpc=>ts_file,
        lv_length TYPE i,
        lt_binary TYPE TABLE OF x.

  DATA(lv_reinr) = VALUE #( it_key_tab[ name = 'Reinr' ]-value OPTIONAL ).
  DATA(lv_filename) = VALUE #( it_key_tab[ name = 'Filename' ]-value OPTIONAL ).
  DATA(lv_pernr) = VALUE #( it_key_tab[ name = 'Pernr' ]-value OPTIONAL ).
  er_entity-reinr = lv_reinr.
  er_entity-filename = '1'.
  er_entity-pernr = lv_pernr.
*  SELECT SINGLE *
*    FROM zhrt_fi_tv_file
*    INTO CORRESPONDING FIELDS OF @ls_file
*      WHERE reinr = @lv_reinr
*        AND filename = @lv_filename.
*  CHECK sy-subrc = 0.
*
*  CALL FUNCTION 'SCMS_URL_GENERATE'
*    EXPORTING
*      command      = 'get'
*      contrep      = get_repository( )
*      docid        = ls_file-file_id
*      compid       = 'request'
*    IMPORTING
*      absolute_uri = ls_file-uri
*    EXCEPTIONS
*      OTHERS       = 1.

*  MOVE-CORRESPONDING ls_file TO er_entity.
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->LOADORDER_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_LOADORDER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD LOADORDER_GET_ENTITYSET.
  DATA: lt_file   type zcl_zhr_fi_tv_req_mpc=>tt_file,
        lv_length TYPE i,
        lt_binary TYPE TABLE OF x.

  DATA(lv_reinr) = VALUE #( it_key_tab[ name = 'Reinr' ]-value OPTIONAL ).
  data(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  data(lr_type) = value #( lt_filter[ property = 'TYPE' ]-select_options optional ).
  append value #( sign = 'I' option = 'EQ' low = '*' ) to lr_type.


  MOVE-CORRESPONDING lt_filter TO et_entityset.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->MULTIPLEAPPROVE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD multipleapprove.
    DATA lo_tech_request_context LIKE io_tech_request_context.
    DATA: lv_appid  TYPE string,
          lt_param  TYPE /iwbep/t_mgw_name_value_pair,
          lt_str    TYPE TABLE OF pru_char255,
          lv_pernr  TYPE persno,
          lv_reinr  TYPE reinr,
          lv_str    TYPE string,
          lv_uname  TYPE uname,
          ls_entity TYPE zcl_zhr_fi_tv_req_mpc=>ts_handlerreturn,
          lt_entity TYPE zcl_zhr_fi_tv_req_mpc=>tt_handlerreturn.
    DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
    lv_str = VALUE #( lt_parameter[ name = 'REQID' ]-value OPTIONAL ).
    lv_uname = VALUE #( lt_parameter[ name = 'DELEGATE' ]-value OPTIONAL ).
    lv_appid = VALUE #( lt_parameter[ name = 'APPID' ]-value OPTIONAL ).
    CHECK lv_appid IS NOT INITIAL.
    SPLIT lv_str AT ';' INTO TABLE lt_str.
    LOOP AT lt_str ASSIGNING FIELD-SYMBOL(<str>).
      CLEAR: lt_param[], lv_pernr, lv_reinr.
      SPLIT <str> AT ',' INTO lv_pernr lv_reinr.
      CHECK lv_pernr IS NOT INITIAL AND lv_pernr IS NOT INITIAL.
      APPEND VALUE #( name = 'PERNR' value = lv_pernr ) TO lt_param.
      APPEND VALUE #( name = 'REINR' value = lv_reinr ) TO lt_param.
      APPEND VALUE #( name = 'APPID' value = lv_appid ) TO lt_param.
      APPEND VALUE #( name = 'UNAME' value = lv_uname ) TO lt_param.
      approve( EXPORTING
                 io_tech_request_context = io_tech_request_context
                 it_param = lt_param
               IMPORTING
                 es_data = ls_entity ).
      APPEND ls_entity TO lt_entity.
    ENDLOOP.

    copy_data_to_ref( EXPORTING is_data = lt_entity
                      CHANGING cr_data = er_data ).

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->MVZSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_MVZ
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD mvzset_get_entityset.
    DATA: lt_val   TYPE TABLE OF usvalues,
          lv_bukrs TYPE bukrs.
    CALL FUNCTION 'SUSR_USER_AUTH_FOR_OBJ_GET'
      EXPORTING
        user_name           = sy-uname
        sel_object          = 'P_TRAVL'
      TABLES
        values              = lt_val
      EXCEPTIONS
        user_name_not_exist = 1
        not_authorized      = 2
        internal_error      = 3
        OTHERS              = 4.
    TRY.
        lv_bukrs = lt_val[ field = 'BUKRS' ]-von.
      CATCH cx_root.
        EXIT.
    ENDTRY.
    SELECT csks~kostl,
           cskt~ltext
      FROM csks
 LEFT JOIN cskt ON csks~kokrs = cskt~kokrs AND csks~kostl = cskt~kostl
     WHERE csks~kokrs = @lv_bukrs
       AND csks~datab <= @sy-datum
       AND csks~datbi >= @sy-datum
       AND cskt~spras = @sy-langu
       AND cskt~datbi >= @sy-datum
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      SHIFT <entity>-kostl LEFT DELETING LEADING '0'.
    ENDLOOP.

  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->NOTAPPROVE
* +-------------------------------------------------------------------------------------------------+
* | [--->] I_REINR                        TYPE        ZEHR_REINR(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD notapprove.
    DATA: ls_entity    TYPE zcl_zhr_fi_tv_req_mpc=>ts_handlerreturn,
          lt_entityset TYPE zcl_zhr_fi_tv_req_mpc=>tt_handlerreturn,
          ls_parameter TYPE /iwbep/s_mgw_name_value_pair,
          lv_reinr     TYPE reinr,
          lv_uname     TYPE uname,
          ls_trip      TYPE zhrt_ui_trip,
          ls_trip_old  TYPE zhrt_ui_trip,
          lv_status    TYPE c LENGTH 2,
          lv_period    TYPE ptrv_perod VALUE '000',
          l_pernr      TYPE persno.
    DATA lt_route TYPE zhr_ui_trip_approver_t.
    DATA ls_route LIKE LINE OF lt_route.
    DATA: lv_author  TYPE uname,
          lv_comment TYPE c LENGTH 500.

    DATA(lt_parameter) = io_tech_request_context->get_parameters( ).
    lv_reinr = VALUE #( lt_parameter[ name = 'REINR' ]-value OPTIONAL ).
    lv_comment = VALUE #( lt_parameter[ name = 'COMMENT' ]-value OPTIONAL ).
    lv_uname = VALUE #( lt_parameter[ name = 'UNAME' ]-value OPTIONAL ).

    IF lv_uname IS INITIAL.
      lv_uname = sy-uname.
    ENDIF.

    SELECT SINGLE *
        FROM zhrt_ui_trip
        INTO CORRESPONDING FIELDS OF ls_trip
        WHERE zhrt_ui_trip~reinr = lv_reinr.
    l_pernr = ls_trip-pernr.
    ls_trip_old = ls_trip.
    ls_trip-aenam = lv_uname.
    ls_trip-rdate = sy-datum.
*    ls_trip-rtime = sy-timlo.  " del NaumovSM
    ls_trip-rtime = sy-uzeit.  " ins NaumovSM
    CLEAR ls_trip-deleg.   " ins NaumovSM

*          ls_trip-aenam = ls_trip-author.
    ls_trip-approver = ls_trip-author.
    ls_trip-commentary = lv_comment.
*          ls_trip-status_1 = '3'.
    IF ls_trip-status_1 = '5'.
      ls_trip-status_2 = '1'.
    ELSE.
      ls_trip-status_2 = '4'.
    ENDIF.
    IF ls_trip-status_1 NE '4' AND ls_trip-status_1 NE '5'.
      ls_trip-edit_flag = abap_true.
    ENDIF.

* { ins NaumovSM 7700148647
*   Проверяем и заполняем если делегирован кем-то
    IF sy-uname <> ls_trip-aenam.
      ls_trip-deleg = sy-uname.
    ENDIF.
* } ins NaumovSM 7700148647

    MODIFY zhrt_ui_trip FROM ls_trip.

    DATA lt_cdtxt TYPE TABLE OF cdtxt.
    CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
      EXPORTING
        objectid                = ls_trip-history_objectid    "ls_trip-pernr && ls_trip-reinr
        tcode                   = sy-tcode
        utime                   = sy-uzeit
        udate                   = sy-datum
        username                = lv_uname
*       PLANNED_CHANGE_NUMBER   = ' '
        object_change_indicator = 'U'
*       PLANNED_OR_REAL_CHANGES = ' '
*       NO_CHANGE_POINTERS      = ' '
        upd_icdtxt_zhr_fio_trip = 'U'
*       UPD_ZHRT_UI_REQUEST     = ' '
        n_zhrt_ui_trip          = ls_trip
        o_zhrt_ui_trip          = ls_trip_old
        upd_zhrt_ui_trip        = 'U'
      TABLES
        icdtxt_zhr_fio_trip     = lt_cdtxt
*       XZHRT_UI_REQUEST        =
*       YZHRT_UI_REQUEST        =
      .

    ls_entity-reinr = lv_reinr.
    ls_entity-status = lv_status.

    APPEND ls_entity TO lt_entityset.


    SELECT SINGLE status_appr, status_calc
              INTO @DATA(ls_pr05_status)
              FROM zhrt_ui_trip_st
              WHERE zhrt_ui_trip_st~status_1 = @ls_trip-status_1
                AND zhrt_ui_trip_st~status_2 = @ls_trip-status_2.


    CALL FUNCTION 'BAPI_TRIP_CHANGE_STATUS'
      EXPORTING
        employeenumber = ls_trip-pernr
        tripnumber     = lv_reinr
        periodnumber   = lv_period  "'000'
*       PRINTED_NEW    =
        approved_new   = ls_pr05_status-status_appr
        account_new    = ls_pr05_status-status_calc
*       SHOW_DIALOG    = ' '
*       ALWAYS_SET_STATUS            = ' '
*       SKIP_MILES_CUMUL             = ' '
*             IMPORTING
*       RETURN         =
*       CURRENT_PERIOD_VERSION       =
*             CHANGING
*       CHANGED_TRIP_PERIO           =
      .


* отправка уведомления
    SUBMIT zhr_fio_change_status_mail
    WITH p_trip EQ lv_reinr
    WITH p_pernr EQ l_pernr
*    with p_st eq lv_status
    WITH p_tr_req = abap_true
          WITH p_ini = abap_false "to reset default
    AND RETURN.


    copy_data_to_ref( EXPORTING is_data = ls_entity
                      CHANGING cr_data = er_data ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->NUUCHSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_NUUCH
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD nuuchset_get_entityset.
    DATA: lt_val TYPE TABLE OF dd07v.
    CONSTANTS: lc_dom TYPE dd07l-domname VALUE 'ZDTV_EKSH_NUUCH'.
    CALL FUNCTION 'GET_DOMAIN_VALUES'
      EXPORTING
        domname    = lc_dom
      TABLES
        values_tab = lt_val[].
    et_entityset = CORRESPONDING #( lt_val MAPPING code = domvalue_l name = ddtext ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->ORGSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_ORG
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD orgset_get_entityset.
*  SELECT MAX( t7ru9a~juper ) AS code,
*         t7ru9a~knaam AS name
*  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
*  FROM t7ru9a
*    WHERE t7ru9a~otype = 'O'
*  GROUP BY t7ru9a~knaam.
  DATA lt_res TYPE TABLE OF zeup_main_iid_1195.
  SELECT SINGLE contn INTO @DATA(l_rfc_conn_rnp) FROM t7rurptcst00 WHERE progr = 'Z_FIORI_FI_TV'.
  TRY.
      CALL FUNCTION 'ZEUP_OTCHET_IID_1195'
        DESTINATION l_rfc_conn_rnp
        EXPORTING
          idata              = sy-datum
        TABLES
          zeup_main_iid_1195 = lt_res.
    CATCH cx_root.
  ENDTRY.
  et_entityset = CORRESPONDING #( lt_res MAPPING code = lifnr name = sname ).
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->PASSTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_PASSTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD passtypeset_get_entityset.
*Get filter
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
*  data(lr_subty) = value #( lt_filter[ property = 'SUBTY' ]-select_options optional ).
  DATA l_pernr TYPE pernr_d.
  DATA lv_reinr TYPE reinr.

  DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
  TRY.
      l_pernr = lt_keys[ name = 'PERNR' ]-value.
      lv_reinr = lt_keys[ name = 'REINR' ]-value.
    CATCH cx_root.
  ENDTRY.

  DATA: lt_passports  TYPE STANDARD TABLE OF zcl_zhr_fi_tv_req_mpc=>ts_passtype,
        ls_pass       LIKE LINE OF lt_passports,
        _p0290        TYPE TABLE OF p0290,
        ls_p0290      LIKE LINE OF _p0290,
        _p0002        TYPE TABLE OF p0002,
        lv_gbdat      TYPE sy-datum,
        lv_20dat      TYPE sy-datum,
        lv_45dat      TYPE sy-datum,
        lv_pass_daten TYPE sy-datum,
        lt_user_info  TYPE pernr_us_tab,
        lv_years      TYPE t5a4a-dlyyr VALUE 20,
        lv_months     TYPE t5a4a-dlymo VALUE 0,
        lv_days       TYPE t5a4a-dlydy VALUE 0.

  IF l_pernr IS INITIAL.
    CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
      EXPORTING
        user   = sy-uname
      TABLES
        ee_tab = lt_user_info.
    l_pernr = VALUE #( lt_user_info[ 1 ]-pernr OPTIONAL ).
  ENDIF.
  m_read_inf l_pernr '0002' _p0002.
*  CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
*  CALL FUNCTION 'HR_READ_INFOTYPE'
*    EXPORTING
**     TCLAS           = 'A'
*      pernr           = l_pernr
*      infty           = '0002'
**     BEGDA           = '18000101'
**     ENDDA           = '99991231'
*    TABLES
*      infty_tab       = _p0002
*    EXCEPTIONS
*      infty_not_found = 1
*      invalid_input   = 2
*      OTHERS          = 3.

  lv_gbdat = VALUE #( _p0002[ 1 ]-gbdat OPTIONAL ).


  CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
    EXPORTING
      date      = lv_gbdat
      days      = lv_days
      months    = lv_months
      signum    = '+'
      years     = lv_years
    IMPORTING
      calc_date = lv_20dat.
  IF sy-datum < lv_20dat.
    lv_pass_daten = lv_20dat.
  ELSE.
    lv_years = 45.
    CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
      EXPORTING
        date      = lv_gbdat
        days      = lv_days
        months    = lv_months
        signum    = '+'
        years     = lv_years
      IMPORTING
        calc_date = lv_45dat.
    IF sy-datum < lv_45dat.
      lv_pass_daten = lv_45dat.
    ELSE.
      lv_pass_daten = '99991231'.
    ENDIF.
  ENDIF.

  CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
  CALL FUNCTION 'HR_READ_SUBTYPE'
    EXPORTING
      pernr         = l_pernr
      infty         = '0290'
      subty         = '21'
      no_auth_check = abap_true
      begda         = sy-datum
      endda         = sy-datum
    TABLES
      infty_tab     = _p0290.
  IF _p0290 IS NOT INITIAL.
    ls_p0290 = VALUE #( _p0290[ 1 ] OPTIONAL ).
    ls_pass-pernr = ls_p0290-pernr.
    ls_pass-seria = ls_p0290-seria.
    ls_pass-seri0 = ls_p0290-seri0.
    ls_pass-nomer = ls_p0290-nomer.
    ls_pass-subty = ls_p0290-subty.
    ls_pass-begda = ls_p0290-datbg.
    ls_pass-endda = COND #( WHEN ls_p0290-daten IS NOT INITIAL THEN ls_p0290-daten ELSE lv_pass_daten )."lv_pass_daten.    "   ls_p0290-daten.
    ls_pass-passl = ls_p0290-passl.
    ls_pass-passl2 = ls_p0290-passl2.
    ls_pass-pcode = ls_p0290-pcode.
*    ls_pass-isexist = abap_true.
    SELECT SINGLE t591s~stext
      INTO @ls_pass-name
      FROM t591s
      WHERE t591s~sprsl = 'RU'
          AND t591s~infty = '0290'
          AND t591s~subty = '21'.
*  else.
*    ls_pass-isexist = abap_false.

    APPEND ls_pass TO et_entityset.
  ENDIF.
  CLEAR: _p0290, ls_pass.

  CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
  CALL FUNCTION 'HR_READ_SUBTYPE'
    EXPORTING
      pernr         = l_pernr
      infty         = '0290'
      subty         = '10'
      no_auth_check = abap_true
      begda         = sy-datum
      endda         = sy-datum
    TABLES
      infty_tab     = _p0290.

  IF _p0290 IS NOT INITIAL.
    ls_p0290 = VALUE #( _p0290[ 1 ] OPTIONAL ).
    ls_pass-pernr = ls_p0290-pernr.
    ls_pass-seria = ls_p0290-seria.
    ls_pass-seri0 = ls_p0290-seri0.
    ls_pass-nomer = ls_p0290-nomer.
    ls_pass-subty = ls_p0290-subty.
    ls_pass-begda = ls_p0290-datbg.
    ls_pass-endda = ls_p0290-daten.
    ls_pass-passl = ls_p0290-passl.
    ls_pass-passl2 = ls_p0290-passl2.
    ls_pass-pcode = ls_p0290-pcode.
*    ls_pass-isexist = abap_true.
    SELECT SINGLE t591s~stext
      INTO @ls_pass-name
      FROM t591s
      WHERE t591s~sprsl = 'RU'
        AND t591s~infty = '0290'
        AND t591s~subty = '10'.
*  else.
*    ls_pass-isexist = abap_false.
    APPEND ls_pass TO et_entityset.
  ENDIF.

  CLEAR: _p0290, ls_pass.

  CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
  CALL FUNCTION 'HR_READ_SUBTYPE'
    EXPORTING
      pernr         = l_pernr
      infty         = '0290'
      subty         = '22'
      no_auth_check = abap_true
      begda         = sy-datum
      endda         = sy-datum
    TABLES
      infty_tab     = _p0290.
  IF _p0290 IS NOT INITIAL.
    ls_p0290 = VALUE #( _p0290[ 1 ] OPTIONAL ).
    ls_pass-pernr = ls_p0290-pernr.
    ls_pass-seria = ls_p0290-seria.
    ls_pass-seri0 = ls_p0290-seri0.
    ls_pass-nomer = ls_p0290-nomer.
    ls_pass-subty = ls_p0290-subty.
    ls_pass-begda = ls_p0290-datbg.
    ls_pass-endda = ls_p0290-daten.
    ls_pass-passl = ls_p0290-passl.
    ls_pass-passl2 = ls_p0290-passl2.
    ls_pass-pcode = ls_p0290-pcode.
*    ls_pass-isexist = abap_true.
    SELECT SINGLE t591s~stext
      INTO @ls_pass-name
      FROM t591s
      WHERE t591s~sprsl = 'RU'
        AND t591s~infty = '0290'
        AND t591s~subty = '22'.
    APPEND ls_pass TO et_entityset.
*  else.
*
  ENDIF.
  CLEAR ls_pass.
  IF lv_reinr IS INITIAL.
    ls_pass-pernr = l_pernr.
    ls_pass-seria = ''.
    ls_pass-seri0 = ''.
    ls_pass-nomer = 'new22'.
    ls_pass-subty = 'XX'.
    ls_pass-name = 'Ввести заграничный паспорт'.
*    ls_pass-isexist = abap_false.
    APPEND ls_pass TO et_entityset.
  ELSE.
    SELECT SINGLE
      pernr,
      seria,
      seri0,
      nomer,
      'Ввести заграничный паспорт'  AS name,   "'Заграничный паспорт, введённый вручную'
      'XX' AS subty,
      issue_date AS begda,
      expire_date AS endda,
      passl,
      pcode,
      name_pass AS namepass,
      last_name_pass AS lastnamepass,
      citizenship AS citizenship
    FROM zhrt_ui_trip
      INTO CORRESPONDING FIELDS OF @ls_pass
      WHERE zhrt_ui_trip~reinr = @lv_reinr.
    APPEND ls_pass TO et_entityset.
  ENDIF.
  CLEAR: _p0290, ls_pass.
*  select  pa0290~pernr as pernr,
*    pa0290~seria as seria,
*    pa0290~seri0 as seri0,
*    pa0290~nomer as nomer,
*    pa0290~subty as subty,
*    pa0290~endda as endda,
*    t591s~stext as name
*  into corresponding fields of table @et_entityset
*  from pa0290
*    left join t591s on pa0290~subty = t591s~subty and t591s~infty = '0290' and t591s~sprsl = 'RU'
*  where pa0290~pernr = @l_pernr and pa0290~subty in ('10','22')
*    or pa0290~pernr = @l_pernr and pa0290~subty = '21' and pa0290~endda >= @sy-datum.



*  if lr_subty is not initial.
*    delete et_entityset where subty not in lr_subty.
*  endif.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->PERFORM_CHECKS
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD perform_checks.
    DATA(lt_parameters) = io_tech_request_context->get_parameters( ).
    DATA: lt_dayattr    TYPE TABLE OF casdayattr,
          lv_datbg      TYPE dats,
          lv_daten      TYPE dats,
          ls_entity     TYPE zcl_zhr_fi_tv_req_mpc_ext=>ts_checks03,
          lt_user_info  TYPE pernr_us_tab,
          _p0290        TYPE TABLE OF p0290,
          lv_pernr      TYPE pernr_d,
          _p0002        TYPE TABLE OF p0002,
          _p0105        TYPE TABLE OF p0105,
          lv_gbdat      TYPE sy-datum,
          lv_20dat      TYPE sy-datum,
          lv_45dat      TYPE sy-datum,
          lv_pass_daten TYPE sy-datum,
          lv_years      TYPE t5a4a-dlyyr VALUE 20,
          lv_months     TYPE t5a4a-dlymo VALUE 0,
          lv_days       TYPE t5a4a-dlydy VALUE 0.
    CONSTANTS l_wfcid TYPE wfcid VALUE 'RU'.
    lv_datbg = VALUE #( lt_parameters[ name = 'DATEBEG' ]-value OPTIONAL ).
    lv_daten = VALUE #( lt_parameters[ name = 'DATEEND' ]-value OPTIONAL ).
    lv_pernr = VALUE #( lt_parameters[ name = 'PERNR' ]-value OPTIONAL ).

    DATA: lv_date_beg TYPE dats,
          lv_date_end TYPE dats,
          lv_time     TYPE tims,
          lv_ts       TYPE timestamp.

    IF lv_pernr IS INITIAL.
      CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
        EXPORTING
          user   = sy-uname
*         IV_WITH_AUTHORITY       = 'X'
        TABLES
          ee_tab = lt_user_info.
      IF lt_user_info IS NOT INITIAL.
        lv_pernr = lt_user_info[ 1 ]-pernr.
      ENDIF.
    ENDIF.

*    CHECK PREGNANCY---------------------------------------
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_SUBTYPE'
      EXPORTING
        pernr     = lv_pernr
        infty     = '0290'
        subty     = '101'
        begda     = lv_datbg
        endda     = lv_daten
*       no_auth_check = 'X'
      TABLES
        infty_tab = _p0290.
    IF sy-subrc = 0.
      IF _p0290 IS NOT INITIAL.
        ls_entity-pregnancy = abap_true.
      ELSE.
        CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
        CALL FUNCTION 'HR_READ_SUBTYPE'
          EXPORTING
            pernr     = lv_pernr
            infty     = '0290'
            subty     = '955'
            begda     = lv_datbg
            endda     = lv_daten
*           no_auth_check = 'X'
          TABLES
            infty_tab = _p0290.
        IF _p0290 IS NOT INITIAL.
          ls_entity-pregnancy = abap_true.
        ENDIF.
      ENDIF.
    ENDIF.
*    END OF CHECK PREGNANCY--------------------------------
*    cl_abap_tstmp=>systemtstmp_utc2syst(
*              exporting utc_tstmp = lv_datbg
*                importing syst_date = lv_date_beg
*                  syst_time = lv_time ).
*
*            convert TIME STAMP <trips>-date_time_beg time zone sy-zonlo
*              into date lv_date time lv_time.

*    cl_abap_tstmp=>systemtstmp_utc2syst(
*              exporting utc_tstmp = lv_daten
*                importing syst_date = lv_date_end
*                  syst_time = lv_time ).
*    CHECK HOLIDAYS----------------------------------------
*    lv_datbg = lv_datbg + 1.
    CALL FUNCTION 'DAY_ATTRIBUTES_GET'
      EXPORTING
        factory_calendar           = l_wfcid
        holiday_calendar           = l_wfcid
        date_from                  = lv_datbg
        date_to                    = lv_daten
*       LANGUAGE                   = SY-LANGU
*       NON_ISO                    = ' '
*     IMPORTING
*       YEAR_OF_VALID_FROM         =
*       YEAR_OF_VALID_TO           =
*       RETURNCODE                 =
      TABLES
        day_attributes             = lt_dayattr
      EXCEPTIONS
        factory_calendar_not_found = 1
        holiday_calendar_not_found = 2
        date_has_invalid_format    = 3
        date_inconsistency         = 4
        OTHERS                     = 5.
    IF sy-subrc = 0.
      LOOP AT lt_dayattr ASSIGNING FIELD-SYMBOL(<beg>). " with key date = lv_daten.
        IF <beg> IS ASSIGNED.
          IF <beg>-freeday EQ abap_true OR <beg>-holiday EQ abap_true.
            ls_entity-holidays = abap_true.
          ENDIF.
*        unassign <beg>.
        ENDIF.
      ENDLOOP.
    ENDIF.
*    END OF CHECK HOLIDAYS---------------------------------

*    CHECK PASSPORT----------------------------------------

    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
*       TCLAS           = 'A'
        pernr           = lv_pernr
        infty           = '0002'
*       BEGDA           = '18000101'
*       ENDDA           = '99991231'
*       SPRPS           = '*'
*       BYPASS_BUFFER   = ' '
*       LEGACY_MODE     = ' '
*     IMPORTING
*       SUBRC           =
      TABLES
        infty_tab       = _p0002
      EXCEPTIONS
        infty_not_found = 1
        invalid_input   = 2
        OTHERS          = 3.
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.
    lv_gbdat = _p0002[ 1 ]-gbdat.


    CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
      EXPORTING
        date      = lv_gbdat
        days      = lv_days
        months    = lv_months
        signum    = '+'
        years     = lv_years
      IMPORTING
        calc_date = lv_20dat.
    IF sy-datum < lv_20dat.
      lv_pass_daten = lv_20dat.
    ELSE.
      lv_years = 45.
      CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
        EXPORTING
          date      = lv_gbdat
          days      = lv_days
          months    = lv_months
          signum    = '+'
          years     = lv_years
        IMPORTING
          calc_date = lv_45dat.
      IF sy-datum < lv_45dat.
        lv_pass_daten = lv_45dat.
      ELSE.
        CLEAR lv_pass_daten.
      ENDIF.
    ENDIF.

    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_SUBTYPE'
      EXPORTING
        pernr         = lv_pernr
        infty         = '0290'
        subty         = '21'
        no_auth_check = abap_true
        begda         = lv_datbg
        endda         = lv_daten
      TABLES
        infty_tab     = _p0290.
    IF _p0290 IS NOT INITIAL.
      READ TABLE _p0290 INTO DATA(lt_p0290) INDEX 1.
      IF lv_pass_daten > lv_datbg AND lv_pass_daten < lv_daten.
        ls_entity-passportexpired = abap_true.
      ELSEIF lt_p0290-passl > lv_datbg AND lt_p0290-passl < lv_daten.
        ls_entity-passportexpired = abap_true.
      ENDIF.
    ENDIF.
* Определяем является ли автор топом или руководителем ССП
    DATA: lt_attrib TYPE TABLE OF pt1222,
          ls_attrib LIKE LINE OF lt_attrib,
          _biorgeh  TYPE REF TO zhr_objbif_orgeh,
          ls_lead   TYPE zhr_objbif_objec_leader_s,
          lt_p0001  TYPE TABLE OF p0001,
          ls_p0001  TYPE p0001.
    m_read_inf lv_pernr '0001' lt_p0001.
    READ TABLE lt_p0001 INTO ls_p0001 INDEX 1.
    CHECK sy-subrc EQ 0.
    CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
    CALL FUNCTION 'RH_OM_ATTRIBUTES_READ'
      EXPORTING
        plvar            = '01'
        otype            = 'S'
        objid            = ls_p0001-plans
        seldate          = sy-datum
      TABLES
        attrib           = lt_attrib
      EXCEPTIONS
        no_active_plvar  = 1
        no_attributes    = 2
        no_values        = 3
        object_not_found = 4
        OTHERS           = 5.
    READ TABLE lt_attrib INTO ls_attrib WITH KEY attrib = 'ZTOPMGR'.

    IF ls_attrib-low IS NOT INITIAL.
      CLEAR: ls_entity-holidays.
    ENDIF.
    IF ls_entity-holidays IS NOT INITIAL.
      CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
        EXPORTING
          otype  = 'O'
          objid  = ls_p0001-orgeh
          datum  = sy-datum
        CHANGING
          result = _biorgeh
        EXCEPTIONS
          OTHERS = 4.
      CHECK _biorgeh IS NOT INITIAL.
      _biorgeh->get_leader(
       EXPORTING
         adatum = sy-datum
       IMPORTING
         result = ls_lead
              ).
      IF ls_lead-pernr EQ ls_p0001-pernr.
        CLEAR: lt_attrib[].
        CALL FUNCTION 'RH_AUTHORITY_CHECK_OFF'.
        CALL FUNCTION 'RH_OM_ATTRIBUTES_READ'
          EXPORTING
            plvar            = '01'
            otype            = 'O'
            objid            = ls_p0001-orgeh
            seldate          = sy-datum
          TABLES
            attrib           = lt_attrib
          EXCEPTIONS
            no_active_plvar  = 1
            no_attributes    = 2
            no_values        = 3
            object_not_found = 4
            OTHERS           = 5.
        READ TABLE lt_attrib INTO ls_attrib WITH KEY attrib = 'ZLEVEL' low = 'ДП'.
        IF sy-subrc EQ 0.
          CLEAR: ls_entity-holidays.
        ENDIF.
      ENDIF.
    ENDIF.


*    END OF CHECK PASSPORT---------------------------------
    copy_data_to_ref( EXPORTING is_data = ls_entity
                          CHANGING cr_data = er_data ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->PERNRFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_PERNRFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD pernrfilterset_get_entityset.

  DATA lv_appid TYPE string.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_appid) = VALUE #( lt_filter[ property = 'APPID' ]-select_options OPTIONAL ).
  lv_appid = VALUE #( lr_appid[ 1 ]-low OPTIONAL ).
  CHECK lv_appid = 'ZHR_FI_TV_AVA'.

  DATA(lt_p0002) = VALUE p0002_tab( ).
  DATA(lv_pernr) = VALUE pernr_d( ).
  DATA lt_pernr TYPE TABLE OF ftpt_req_head-pernr.

  clear et_entityset[].

  SELECT DISTINCT pernr
    FROM ftpt_req_head
    INTO TABLE lt_pernr.

  LOOP AT lt_pernr ASSIGNING FIELD-SYMBOL(<p_pernr>).
    lv_pernr = <p_pernr>.
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    clear lt_p0002[].
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = lv_pernr
        infty     = '0002'
        begda     = sy-datum
        endda     = sy-datum
*       bypass_buffer = abap_true
      TABLES
        infty_tab = lt_p0002
      EXCEPTIONS
        OTHERS    = 0.
    ASSIGN lt_p0002[ 1 ] TO FIELD-SYMBOL(<p_p0002>).
    IF sy-subrc = 0.
      APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<p_entity>).
      <p_entity>-pernr = <p_pernr>.
      CONCATENATE <p_p0002>-nachn <p_p0002>-vorna <p_p0002>-midnm <p_pernr> INTO <p_entity>-fio SEPARATED BY space.
    ENDIF.
  ENDLOOP.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->PREPAYSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_PREPAY
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD prepayset_get_entityset.
    DATA: lv_reinr         TYPE reinr,
          lv_pernr         TYPE persno,
          lt_receipts      TYPE TABLE OF zstv_eksh_bapitrvreo,
          lt_addinfo       TYPE TABLE OF bapitraddi,
          ls_frame         TYPE zstv_eksh_framedata,
          lt_userdata      TYPE ptrv_bapi_t_userdata,
          lt_costdist_trip TYPE TABLE OF bapitrvcot,
          ls_return        TYPE bapireturn,
          lv_menge         TYPE i,
          lt_card          TYPE zcl_zhr_fi_tv_req_mpc=>tt_card,
          lt_expenses_sums TYPE ztfitv_eksh_daily_exp_sums.
    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    TRY.
        lv_reinr = lt_keys[ name = 'REINR' ]-value.
        lv_pernr = lt_keys[ name = 'PERNR' ]-value.
      CATCH cx_root.
    ENDTRY.
* Считываем карты
    get_cardset( EXPORTING
                    iv_pernr = lv_pernr
                  CHANGING
                    ct_set = lt_card ).
* Регионы
    SELECT * FROM t706o WHERE spras = @sy-langu AND morei = '33' AND land1 = 'RU' INTO TABLE @DATA(lt_region).

    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = lv_pernr
        tripnumber     = lv_reinr
      IMPORTING
        framedata      = ls_frame
        return         = ls_return
      TABLES
        receipts       = lt_receipts
        addinfo        = lt_addinfo
        costdist_trip  = lt_costdist_trip
        userdata       = lt_userdata.
    IF ls_return-code EQ '56804'. "Если все ок
      LOOP AT lt_receipts ASSIGNING FIELD-SYMBOL(<rec>).
        APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
        <entity>-reinr = lv_reinr.
        <entity>-rec_amount = rescale( val = <rec>-rec_amount dec = 0 ).
        MOVE-CORRESPONDING <rec> TO <entity>.
        <entity>-rec_paycurr = <rec>-loc_curr.
        <entity>-zzccard = VALUE #( lt_card[ number = <rec>-zzccard ]-incid OPTIONAL ).
        CONDENSE <entity>-zzccard NO-GAPS.
        READ TABLE lt_addinfo INDEX sy-tabix ASSIGNING FIELD-SYMBOL(<add>).
        IF sy-subrc EQ 0.
          MOVE-CORRESPONDING <add> TO <entity>.
*          <entity>-region = VALUE #( lt_region[ rgion = <add>-region ]-text25 OPTIONAL ).
          lv_menge = <add>-multipli.
          <entity>-zzmenge = lv_menge.
        ENDIF.
        DATA(lv_fistl) = <rec>-zzfistl.
        <entity>-zzxndfl = COND #( WHEN <entity>-zzxndfl EQ 'N' THEN abap_true ELSE <entity>-zzxndfl ).
      ENDLOOP.
      lv_fistl = COND #( WHEN lv_fistl IS INITIAL THEN ls_frame-zzfistl ELSE lv_fistl ).
* Добавляем суточные в АО, если они не введены вручную
      LOOP AT et_entityset INTO DATA(ls_ent) WHERE exp_type = 'SUTZ' OR exp_type = 'SUTV' .
        EXIT.
      ENDLOOP.
      IF ls_ent IS INITIAL.
        CALL FUNCTION 'Z_FITV_DAILY_EXPENSES_GET'
          EXPORTING
            employeenumber = lv_pernr
            tripnumber     = lv_reinr
*           PERIODNUMBER   =
*           PERIOD_VERSION =
*           TEKEY          =
*           READ_FROM_DB   = ABAP_FALSE
            exchange_date  = abap_true
          IMPORTING
            userdata       = lt_userdata
            expenses_sums  = lt_expenses_sums.

*        DATA(lv_date) = COND #( WHEN ls_frame-exchange_date IS NOT INITIAL THEN ls_frame-exchange_date ELSE ls_frame-dep_date ).
*        LOOP AT lt_userdata ASSIGNING FIELD-SYMBOL(<ud>) WHERE zzspkzl = 'VERP'.
*          APPEND INITIAL LINE TO et_entityset ASSIGNING <entity>.
*          <entity>-zznuuch = 'УЧ'.
*          <entity>-country = <ud>-zzlndfr."'RU'.
*          <entity>-exp_type = 'VERP'.
*          <entity>-rec_amount = <ud>-zzwrbtr.
*          <entity>-tax_code = 'Q0'.
*          <entity>-rec_curr = <ud>-zzwaers.
*          <entity>-receiptno = sy-tabix.
*          <entity>-zzfistl = lv_fistl.
*          <entity>-descript = 'Суточные'.
*          <entity>-rec_date = lv_date.
*          <entity>-reinr = lv_reinr.
*          lv_menge = <ud>-zzmenge.
*          <entity>-zzmenge = lv_menge.
*        ENDLOOP.
        LOOP AT lt_expenses_sums ASSIGNING FIELD-SYMBOL(<es>).
          APPEND INITIAL LINE TO et_entityset ASSIGNING <entity>.
          <entity>-zznuuch = 'УЧ'.
          <entity>-exp_type = 'VERP'.
          <entity>-rec_amount = <es>-wrbtr.
          <entity>-zzdmbtr = <es>-dmbtr.
          <entity>-tax_code = 'Q0'.
          <entity>-rec_curr = <es>-waers.
          <entity>-rec_paycurr = 'RUB'.
          <entity>-zzukurs_c = <es>-ukurs.
          <entity>-receiptno = sy-tabix.
          <entity>-zzfistl = lv_fistl.
          <entity>-descript = 'Суточные'.
          <entity>-rec_date = <es>-dkurs.
          <entity>-reinr = lv_reinr.
        ENDLOOP.
      ENDIF.
**********************************************************************
      DATA lt_set TYPE zcl_zhr_fi_tv_req_mpc=>tt_prepay.
      LOOP AT et_entityset ASSIGNING <entity> WHERE exp_type = 'VERP'.
        APPEND <entity> TO lt_set.
        DELETE TABLE et_entityset FROM <entity>.
        CONTINUE.
      ENDLOOP.
      LOOP AT et_entityset ASSIGNING <entity>.
        APPEND <entity> TO lt_set.
        DELETE TABLE et_entityset FROM <entity>.
        CONTINUE.
      ENDLOOP.
      et_entityset[] = lt_set[].
**********************************************************************
    ELSE.
      CHECK lv_reinr IS NOT INITIAL.
      DATA: lt_header  TYPE /iwbep/t_mgw_name_value_pair,
            lv_message TYPE string.
      lv_message = cl_http_utility=>escape_url( 'tech_err' ).
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4 INTO DATA(lv_msg).
      lv_msg = |{ TEXT-010 } { lv_msg }|.
      APPEND INITIAL LINE TO lt_header ASSIGNING FIELD-SYMBOL(<fs_header>).
      <fs_header>-name  = 'error'.
      <fs_header>-value = lv_message .
      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          textid                 = /iwbep/cx_mgw_busi_exception=>business_error
          http_header_parameters = lt_header
          message                = CONV #( lv_msg ).
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->RAILCLASSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_RAILCLASS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method railclassset_get_entityset.
  SELECT TA20PS1~SPECID AS code,
         TA20PS1~NAME AS name
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  FROM TA20PS1
  WHERE TA20PS1~SPRAS = @sy-langu
    AND TA20PS1~CATEGORY = 'T'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Static Public Method ZCL_ZHR_FI_TV_REQ_DPC_EXT=>READ_TEXT
* +-------------------------------------------------------------------------------------------------+
* | [<---] IV_TEXT_ID                     TYPE        THEAD-TDNAME
* | [<-->] CV_TEXT                        TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD read_text.

*CV_TEXT  TYPE ZHRE_UI_TRIP_TRIPREPORT  Отчет о командировке

    DATA: r_tab TYPE tttext.
    CLEAR r_tab[].
    CALL FUNCTION 'READ_TEXT'
      EXPORTING
        id                      = 'ZTRI'
        language                = sy-langu
        name                    = iv_text_id
        object                  = 'Z_FIO_TRI'
      TABLES
        lines                   = r_tab[]
      EXCEPTIONS
        id                      = 1
        language                = 2
        name                    = 3
        not_found               = 4
        object                  = 5
        reference_check         = 6
        wrong_access_to_archive = 7
        OTHERS                  = 8.
    LOOP AT r_tab ASSIGNING FIELD-SYMBOL(<str>).
      IF sy-tabix EQ 1.
        cv_text = <str>-tdline.
      ELSE.
        cv_text = |{ cv_text } { <str>-tdline }|.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->REGIONSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_REGION
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method REGIONSET_GET_ENTITYSET.
  select  t7ruregiont~bezei as name,
          t7ruregiont~bland as code,
          t7ruregiont~land1 as countrycode
  from t7ruregiont
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->REQUESTLISTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TS_REQUESTLIST
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD requestlistset_get_entity.

  DATA et_entityset TYPE ZCL_ZHR_FI_TV_REQ_MPC=>Tt_REQUESTLIST.
  DATA(lt_keys) = io_tech_request_context->get_keys( ).
  DATA: lv_subty TYPE subty,
        lv_pernr TYPE pernr_d,
        lv_reinr TYPE reinr,
        lv_user  TYPE uname.

* Считываем делегирующего пользователя
  DATA(lo_request) = me->mr_request_details.
  DATA(lt_url_param) = lo_request->t_uri_query_parameter.
  READ TABLE lt_url_param ASSIGNING FIELD-SYMBOL(<param>) WITH KEY name = 'Delegate'.
  IF sy-subrc EQ 0.
    lv_user = <param>-value.
    DATA(lv_deleg) = abap_true.
  ELSE.
    lv_user = sy-uname.
  ENDIF.
  DATA(lv_appid) = VALUE #( lt_url_param[ name = 'AppID' ]-value OPTIONAL ).
* проверяем есть ли делегирование в реальности
  CONSTANTS: lc_reppr TYPE hr_rep_prf VALUE 'ZREQ'.
  IF lv_user NE sy-uname AND lv_deleg IS NOT INITIAL.
    SELECT SINGLE us_name FROM hrus_d2 INTO @lv_user
     WHERE us_name = @lv_user
       AND rep_name = @sy-uname
       AND begda <= @sy-datum
       AND endda >= @sy-datum
       AND reppr = @lc_reppr
       AND active = @abap_true.
    IF sy-subrc NE 0.
      EXIT.
    ENDIF.
  ENDIF.
  TRY.
      lv_pernr = lt_keys[ name = 'PERNR' ]-value.
      lv_reinr = lt_keys[ name = 'REINR' ]-value.
      lv_subty = lt_keys[ name = 'SUBTY' ]-value.
    CATCH cx_root.
  ENDTRY.

  DATA: lv_datebeg          TYPE dats VALUE '19700101',
        lv_dateend          TYPE dats VALUE '99991231',
        lv_append           TYPE abap_bool,
        lv_surname          TYPE string,
        lv_city             TYPE string,
        lv_role_res         TYPE agr_name,
        lv_role_tax         TYPE agr_name,
        lv_role_acc         TYPE agr_name,
        lv_role_eio         TYPE agr_name,
        lv_role_tri         TYPE agr_name,
        lv_role_edu         TYPE agr_name,
        lv_role_test        TYPE agr_name,
        lv_role_support     TYPE agr_name,
        lv_role_cons        TYPE agr_name,
        lv_has_role_res     TYPE abap_bool,
        lv_has_role_tax     TYPE abap_bool,
        lv_has_role_acc     TYPE abap_bool,
        lv_has_role_eio     TYPE abap_bool,
        lv_has_role_test    TYPE abap_bool,
        lv_has_role_tri     TYPE abap_bool,
        lv_has_role_support TYPE abap_bool,
        lv_has_role_cons    TYPE abap_bool,
        lv_has_role_edu     TYPE abap_bool,
        lv_mask             TYPE agr_name,
        lr_approver_filter  TYPE RANGE OF sy-uname,
        ls_approver_filter  LIKE LINE OF lr_approver_filter,
        lr_author_filter    TYPE RANGE OF sy-uname,
        ls_author_filter    LIKE LINE OF lr_author_filter,
        es_entity           TYPE zcl_zhr_fi_tv_req_mpc=>ts_requestlist,
        tz                  TYPE ttzz-tzone VALUE 'EST',
        lt_user_info        TYPE pernr_us_tab,
        lt_p0001            TYPE TABLE OF p0001,
        lt_p0002            TYPE TABLE OF p0002,
        ls_p0002            TYPE p0002,
        lv_pernr_author     TYPE persno,
        lv_user_werks       TYPE werks,
        lv_request_werks    TYPE persa,
        lv_temp             TYPE string,
        lr_schem            TYPE RANGE OF rsche.

  lv_surname = VALUE #( lt_url_param[ name = 'SURNAME' ]-value OPTIONAL ).
  DATA lr_surname LIKE RANGE OF lv_surname.
  IF lv_surname IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_surname ) TO lr_surname.
  ENDIF.

  DATA: lr_pernr TYPE RANGE OF persno.
  IF lv_pernr IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = CONV persno( lv_pernr ) ) TO lr_pernr.
  ENDIF.

  DATA lr_reinr LIKE RANGE OF lv_reinr.
  IF lv_reinr IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_reinr ) TO lr_reinr.
  ENDIF.

  DATA lr_appid LIKE RANGE OF lv_appid.
  IF lv_appid IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_appid ) TO lr_appid.
  ENDIF.

  DATA(lv_city_filter) = VALUE #( lt_url_param[ name = 'CITY' ]-value OPTIONAL ).
  DATA lr_city_filter LIKE RANGE OF lv_city_filter.
  IF lv_city_filter IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_city_filter ) TO lr_city_filter.
  ENDIF.

  DATA(lv_country_filter) = VALUE #( lt_url_param[ name = 'COUNTRY' ]-value OPTIONAL ).
  DATA lr_country_filter LIKE RANGE OF lv_country_filter.
  IF lv_country_filter IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_country_filter ) TO lr_country_filter.
  ENDIF.

  DATA(lv_trans_type_filter) = VALUE #( lt_url_param[ name = 'REQUESTTYPE' ]-value OPTIONAL ).
  DATA lr_trans_type_filter LIKE RANGE OF lv_trans_type_filter.
  IF lv_trans_type_filter IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_trans_type_filter ) TO lr_trans_type_filter.
  ENDIF.

  DATA(lv_reserve_st) = VALUE #( lt_url_param[ name = 'RESERVST' ]-value OPTIONAL ).
  DATA lr_reserv_st LIKE RANGE OF lv_reserve_st.
  IF lv_reserve_st IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_reserve_st ) TO lr_reserv_st.
  ENDIF.

  lv_datebeg = VALUE #( lt_url_param[ name = 'DATEBEGIN' ]-value OPTIONAL ).
  DATA lr_datebeg LIKE RANGE OF lv_datebeg.
  IF lv_datebeg IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_datebeg ) TO lr_datebeg.
  ENDIF.

  DATA(lv_tripgoal) = VALUE #( lt_url_param[ name = 'TRIPGOAL' ]-value OPTIONAL ).
  DATA lr_tripgoal LIKE RANGE OF lv_tripgoal.
  IF lv_tripgoal IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_tripgoal ) TO lr_tripgoal.
  ENDIF.

  lv_user =  VALUE #( lt_url_param[ name = 'UNAME' ]-value OPTIONAL ).
  DATA lr_user LIKE RANGE OF lv_user.
  IF lv_user IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_user ) TO lr_user.
  ENDIF.

  DATA(lv_status_1) =  VALUE #( lt_url_param[ name = 'STATUS1' ]-value OPTIONAL ).
  DATA lr_status_1 LIKE RANGE OF lv_status_1.
  IF lv_status_1 IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_status_1 ) TO lr_status_1.
  ENDIF.

  DATA(lv_status_2) =  VALUE #( lt_url_param[ name = 'STATUS2' ]-value OPTIONAL ).
  DATA lr_status_2 LIKE RANGE OF lv_status_2.
  IF lv_status_2 IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_status_2 ) TO lr_status_2.
  ENDIF.

  DATA(lv_past_trip) = VALUE #( lt_url_param[ name = 'PAST_TRIP' ]-value OPTIONAL ).
  DATA lr_past_trip LIKE RANGE OF lv_past_trip.
  IF lv_past_trip IS NOT INITIAL.
    APPEND VALUE #( sign = 'I' option = 'EQ' low = lv_past_trip ) TO lr_past_trip.
  ENDIF.

  DATA(lv_all) = VALUE #( lt_url_param[ name = 'ALL' ]-value OPTIONAL ).
  DATA(lv_support) = VALUE #( lt_url_param[ name = 'SUPPORT' ]-value OPTIONAL ).

  IF lv_support IS NOT INITIAL.
    CLEAR lv_all.
  ENDIF.
  IF lr_reinr[] IS INITIAL.
    CLEAR lv_support.
  ENDIF.
  lv_user = VALUE #( lr_user[ 1 ]-low OPTIONAL ).
  DEFINE m_read_inf.
    REFRESH &3.
*отключаю проверку полномочий
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
*читаю по ТН из 0002 ИТ данные пользователя
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = &1
        infty     = &2
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = &3
      EXCEPTIONS
        OTHERS    = 1.
  END-OF-DEFINITION.

  DEFINE m_get_pernr_by_uname.

    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
     EXPORTING
       user_name                     = CONV uname( &1 )
       begindate                     = sy-datum
       enddate                       = sy-datum
     IMPORTING
       employeenumber                = &2
     EXCEPTIONS
       no_employeenumber_found       = 1
       subtype_not_available         = 2
       OTHERS                        = 3.
  END-OF-DEFINITION.

  DEFINE m_check_role.
    SELECT SINGLE agr_name
     INTO @lv_temp
      FROM agr_users
      WHERE uname = @lv_user
        AND from_dat <= @sy-datum
        AND to_dat >= @sy-datum
        AND agr_name LIKE @&1
      .
    IF sy-subrc = 0.
      &2 = abap_true.
    ELSE.
      &2 = abap_false.
    ENDIF.
  END-OF-DEFINITION.

  lv_appid = VALUE #( lr_appid[ 1 ]-low OPTIONAL ).
  lv_user = COND #( WHEN lv_user IS INITIAL THEN sy-uname ELSE lv_user ).

  IF sy-sysid = 'HR3'.
    lv_role_acc = c_test_role_acc.
    lv_role_res = c_test_role_res.
    lv_role_tax = c_test_role_tax.
    lv_role_eio = c_test_role_eio.
    lv_role_tri = c_test_role_trip.
    lv_role_edu = c_test_role_edu.
  ELSE.
    lv_role_acc = c_role_acc.
    lv_role_res = c_role_res.
    lv_role_tax = c_role_tax.
    lv_role_eio = c_role_eio.
    lv_role_tri = c_role_trip.
    lv_role_edu = c_role_edu.
  ENDIF.

  lv_role_cons = c_role_cons.
  lv_role_support = c_role_support.
  m_get_pernr_by_uname lv_user lv_pernr_author.
  m_check_role lv_role_tri lv_has_role_tri.
  m_check_role lv_role_edu lv_has_role_edu.
  m_check_role lv_role_cons lv_has_role_cons.
  m_check_role lv_role_support lv_has_role_support.
*  IF lv_has_role_cons IS INITIAL.
*    CLEAR lv_support.
*  ENDIF.

  IF lv_appid = 'ZHR_FI_TV_RES' OR lv_appid = 'ZHR_FI_TV_AVA'
     OR lv_appid = 'ZHR_FI_TV_APP'.
* проверка ролей

    m_read_inf lv_pernr '0001' lt_p0001.
    IF lt_p0001 IS NOT INITIAL.
      lv_user_werks = lt_p0001[ 1 ]-werks.
    ENDIF.
    m_check_role lv_role_acc lv_has_role_acc.
    m_check_role lv_role_res lv_has_role_res.
    m_check_role lv_role_tax lv_has_role_tax.
    m_check_role lv_role_eio lv_has_role_eio.

*    m_check_role c_test_role lv_has_role_test.
* EXIT если нет ролей
    IF lv_appid = 'ZHR_FI_TV_RES'
      AND lv_has_role_res = abap_false
      AND lv_has_role_test = abap_false
      AND lv_support = abap_false.
      EXIT.
    ENDIF.

    IF lv_appid = 'ZHR_FI_TV_AVA'
      AND lv_has_role_tax = abap_false
      AND lv_has_role_acc = abap_false
      AND lv_has_role_test = abap_false
      AND lv_has_role_cons = abap_false
      AND lv_has_role_support = abap_false.
      EXIT.
    ENDIF.
  ENDIF.

  IF lr_country_filter[] IS NOT INITIAL.
    IF lv_appid NE 'ZHR_FI_TV_RES'.
      LOOP AT lr_country_filter ASSIGNING FIELD-SYMBOL(<p_c_filt>).
        IF <p_c_filt>-low = 'RU'.
          APPEND VALUE #( sign = 'I' option = 'EQ' low = '01' ) TO lr_schem.
        ELSE.
          APPEND VALUE #( sign = 'I' option = 'EQ' low = '02' ) TO lr_schem.
        ENDIF.
      ENDLOOP.
      SORT lr_schem BY low.
      DELETE ADJACENT DUPLICATES FROM lr_schem.
      IF 'XX' IN lr_country_filter.
        DELETE lr_country_filter WHERE low = 'XX'.
      ENDIF.
    ENDIF.
  ENDIF.
  IF lr_datebeg IS NOT INITIAL.
    TRY.
        lv_datebeg = lr_datebeg[ 1 ]-low.
      CATCH cx_root.
    ENDTRY.
    TRY.
        lv_dateend = lr_datebeg[ 1 ]-high.
      CATCH cx_root.
    ENDTRY.
    lv_datebeg = COND #( WHEN lv_datebeg IS INITIAL THEN '18000101' ELSE lv_datebeg ).
    lv_dateend = COND #( WHEN lv_dateend IS INITIAL THEN '99991231' ELSE lv_dateend ).
  ENDIF.
  IF lv_appid = 'ZHR_FI_TV_APP'.
    SELECT SINGLE *
          FROM agr_users
          INTO @DATA(ls_struc)
          WHERE agr_users~uname = @lv_user
            AND agr_users~agr_name = 'ZHR_HR4_FUNC_SUPPORT_3'
            AND agr_users~from_dat <= @sy-datum
            AND agr_users~to_dat >= @sy-datum.

    IF sy-subrc = 0.
    ENDIF.
  ENDIF.

  IF lr_pernr IS NOT INITIAL.
    CASE lr_pernr[ 1 ]-low.
      WHEN '000000'.
        SELECT SINGLE *
          FROM agr_users
          INTO @DATA(ls_struc1)
          WHERE agr_users~uname = @lv_user
            AND agr_users~agr_name = 'ZHR_HR4_FUNC_SUPPORT_3'
          "ztest_fiori_eio_1000
            AND agr_users~from_dat <= @sy-datum
            AND agr_users~to_dat >= @sy-datum.

        IF sy-subrc = 0.
          DATA ls_status_filter LIKE LINE OF lr_status_1.
          ls_status_filter-sign = 'I'.
          ls_status_filter-option = 'EQ'.
          ls_status_filter-low = '4'.
          APPEND ls_status_filter TO lr_status_1.

        ELSE.
          ls_approver_filter-sign = 'I'.
          ls_approver_filter-option = 'EQ'.
          ls_approver_filter-low = lv_user.
          APPEND ls_approver_filter TO lr_approver_filter.

        ENDIF.
      WHEN '000001'.

      WHEN OTHERS.

    ENDCASE.
  ENDIF.
  IF lr_reinr IS NOT INITIAL.
    lv_reinr = lr_reinr[ 1 ]-low.
    REPLACE ALL OCCURENCES OF '''' IN lv_reinr WITH ''.
    lr_reinr[ 1 ]-low = lv_reinr.
  ENDIF.
  "Собираем данные
  IF lv_all IS INITIAL.
    SELECT DISTINCT
            ftpt_req_head~reinr AS reinr,
            ftpt_req_head~pernr AS pernr,
            ptrv_head~datv1 AS datebegin,
            ptrv_head~datb1 AS dateend,
            ftpt_req_head~dates AS datecreate,
            MAX( ftpt_req_head~times ) AS timecreate,
            zhrt_ui_trip~status_1 AS status1,
            zhrt_ui_trip~status_2 AS status2,
            ftpt_req_head~location_end AS city,
            t005t~landx AS country,
            pa0002~inits AS inits,
            pa0002~nachn AS surname,
            zhrt_ui_trip_st~type AS statustext1,
            zhrt_ui_trip_st~text AS statustext2,
            zhrt_sdescr_t~sdescr AS tripgoal,
            zhrt_ui_trip~pers_resp AS persresp,
            zhrt_ui_trip~subty AS subty,
            zhrt_ui_trip~reserv_uname AS executor,
            zhrt_ui_trip~reserv_st AS bookingstatus,
            zhrt_ui_trip~tax_appr,
            zhrt_ui_trip~tax_uname,
            zhrt_ui_trip~acc_uname,
            zhrt_ui_trip~approver,
            zhrt_ui_trip~edu_appr_flag,
            zhrt_ui_trip~past_trip
    INTO TABLE @DATA(itab)  " corresponding fields of table @et_entityset
    FROM ftpt_req_head
      LEFT JOIN ptrv_head ON ptrv_head~reinr = ftpt_req_head~reinr
        AND ptrv_head~pernr = ftpt_req_head~pernr
      LEFT JOIN pa0002 ON ftpt_req_head~pernr = pa0002~pernr AND pa0002~endda >= @sy-datum AND pa0002~begda <= @sy-datum
*    left join zthr_tr_status on ftpt_req_head~status = zthr_tr_status~status
      LEFT JOIN zhrt_ui_trip ON zhrt_ui_trip~reinr = ftpt_req_head~reinr
        AND zhrt_ui_trip~pernr = ftpt_req_head~pernr
      LEFT JOIN zhrt_ui_trip_st ON zhrt_ui_trip~status_1 = zhrt_ui_trip_st~status_1 AND zhrt_ui_trip~status_2 = zhrt_ui_trip_st~status_2
      LEFT JOIN zhrt_sdescr_t ON zhrt_sdescr_t~code = zhrt_ui_trip~trip_goal
      LEFT JOIN ftpt_request ON ftpt_request~reinr = ftpt_req_head~reinr
        AND ftpt_request~pernr = ftpt_req_head~pernr
      LEFT JOIN zthr_tr_trantype ON zthr_tr_trantype~id = ftpt_request~request_type
      LEFT JOIN t005t ON ftpt_req_head~country_end = t005t~land1
    WHERE ftpt_req_head~plan_request = 'R'
      AND ftpt_req_head~reinr IN @lr_reinr
      AND ftpt_req_head~pernr IN @lr_pernr
      AND zhrt_ui_trip~approver IN @lr_approver_filter
      AND zhrt_ui_trip~author IN @lr_author_filter
      AND zhrt_ui_trip~status_1 IN @lr_status_1
*      AND ( ( ftpt_request~country_beg IN @lr_country_filter OR ftpt_request~country_end IN @lr_country_filter ) )
      AND ( ftpt_req_head~country_end IN @lr_country_filter )
      AND zhrt_ui_trip~schem IN @lr_schem
      AND ftpt_request~request_type IN @lr_trans_type_filter
      AND ftpt_req_head~reinr IN @lr_reinr
      AND t005t~spras = 'R'
      AND ftpt_req_head~date_beg <= @lv_dateend " >= @lv_datebeg "@lv_dateend
      AND ftpt_req_head~date_end >= @lv_datebeg "<= @lv_datebeg "@lv_dateend
      AND zhrt_ui_trip~reserv_st IN @lr_reserv_st
      AND zhrt_sdescr_t~code IN @lr_tripgoal
      AND zhrt_ui_trip~status_2 IN @lr_status_2
      AND zhrt_ui_trip~past_trip IN @lr_past_trip
      GROUP BY ftpt_req_head~reinr,
            ftpt_req_head~pernr,
*          ftpt_req_head~date_beg,
*          ftpt_req_head~date_end,
            ptrv_head~datv1,
            ptrv_head~datb1,
            ftpt_req_head~dates,
            zhrt_ui_trip~status_1,
            zhrt_ui_trip~status_2,
            ftpt_req_head~location_end,
*          ftpt_req_head~country_end,
            t005t~landx,
            pa0002~inits,
            pa0002~nachn,
            zhrt_ui_trip_st~type,
            zhrt_ui_trip_st~text,
            zhrt_sdescr_t~sdescr,
            zhrt_ui_trip~pers_resp,
      zhrt_ui_trip~subty,
      zhrt_ui_trip~reserv_uname,
      zhrt_ui_trip~reserv_st,
      zhrt_ui_trip~tax_appr,
      zhrt_ui_trip~tax_uname,
      zhrt_ui_trip~acc_uname,
      zhrt_ui_trip~approver,
      zhrt_ui_trip~edu_appr_flag,
      zhrt_ui_trip~past_trip


    ORDER BY ftpt_req_head~dates DESCENDING, timecreate DESCENDING.


    LOOP AT itab ASSIGNING FIELD-SYMBOL(<itab>).
      CLEAR es_entity.
      lv_append = abap_false.

      CASE lv_appid.
        WHEN 'ZHR_FI_TV_RES'.
          IF ( <itab>-past_trip = abap_true ).
            CONTINUE.
          ENDIF.
          IF
*      спецификация стр.6 п.1
            ( ( <itab>-status1 = '1' AND
            ( <itab>-status2 = '8' OR <itab>-status2 = '10' OR <itab>-status2 = '11' ) )
            OR ( <itab>-status1 = '2' AND ( <itab>-status2 = '8' OR <itab>-status2 = '10') )
*      спецификация стр.6 п.2
            OR <itab>-persresp = 'X'
*      спецификация стр.6 п.3
            OR <itab>-bookingstatus IS NOT INITIAL )
           AND NOT ( ( <itab>-status1 = '1' OR <itab>-status1 = '2' ) AND ( <itab>-status2 = '1' ) ).
            IF lv_has_role_res = abap_true.
              m_read_inf <itab>-pernr '0001' lt_p0001.
              CHECK lt_p0001 IS NOT INITIAL.
              lv_request_werks = lt_p0001[ 1 ]-werks.

              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc = 2.
              lv_append = abap_true.

            ENDIF.
            IF <itab>-executor IS NOT INITIAL.
*            and ( lv_has_role_res = abap_true or lv_has_role_test = abap_true ).
              m_get_pernr_by_uname <itab>-executor lv_pernr.
              m_read_inf lv_pernr '0002' lt_p0002.
              IF lt_p0002 IS NOT INITIAL.
                ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                es_entity-reservuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
              ELSE.
                es_entity-reservuname = <itab>-executor.
              ENDIF.
            ENDIF.
            IF es_entity-subty IS NOT INITIAL.
              lv_append = abap_true.
            ENDIF.
            IF lv_support EQ abap_true.
              lv_append = abap_true.
              es_entity-bookingstatus = '6'.
            ENDIF.
          ENDIF.

        WHEN 'ZHR_FI_TV_AVA'.
          IF <itab>-status1 = '5' AND
                    ( <itab>-status2 = '3' OR <itab>-status2 = '13'
                    OR <itab>-status2 = '15' OR <itab>-status2 = '16'
                    OR <itab>-status2 = '17').
            m_read_inf <itab>-pernr '0001' lt_p0001.
            CHECK lt_p0001 IS NOT INITIAL.
            lv_request_werks = lt_p0001[ 1 ]-werks.
            IF <itab>-tax_appr = abap_true AND lv_has_role_acc = abap_true.
*             ( lv_has_role_acc = abap_true OR lv_has_role_test = abap_true
              "OR lv_has_role_cons = abap_true OR lv_has_role_support = abap_true
*            ).
              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc = 2.
              lv_append = abap_true.
              IF <itab>-acc_uname IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-acc_uname lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-accuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ELSEIF <itab>-tax_uname IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-tax_uname lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-taxuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ENDIF.
              es_entity-taxappr =  <itab>-tax_appr.
              lv_append = abap_true.
            ELSEIF lv_has_role_tax = abap_true. "OR lv_has_role_test = abap_true.
*            OR lv_has_role_cons = abap_true OR lv_has_role_support = abap_true.
              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc = 2.
              lv_append = abap_true.
              IF <itab>-tax_uname IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-tax_uname lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-taxuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ENDIF.

              es_entity-taxappr =  <itab>-tax_appr.
              IF <itab>-tax_appr = abap_true.
                lv_append = abap_false.
              ELSE.
                lv_append = abap_true.
              ENDIF.
            ENDIF.
            IF lv_has_role_tax = abap_true.
              es_entity-injobflag = COND #( WHEN <itab>-tax_uname IS INITIAL THEN abap_true ELSE abap_false ).
            ENDIF.
            IF lv_has_role_acc = abap_true AND <itab>-tax_appr = abap_true AND <itab>-acc_uname IS INITIAL.
              es_entity-injobflag = abap_true.
            ENDIF.
            IF <itab>-status2 = '13'.
              CLEAR es_entity-injobflag.
            ENDIF.
            IF lv_support EQ abap_true.
              lv_append = abap_true.
            ENDIF.
          ENDIF.
        WHEN 'ZHR_FI_TV_APP'.
*        IF ( lv_has_role_eio = abap_true OR lv_has_role_cons = abap_true OR lv_has_role_support = abap_true )  " AND <itab>-status1 <= '4'
          IF lv_has_role_eio = abap_true
            AND ( <itab>-status2 = '5' OR <itab>-status2 = '8' ).
            lv_append = abap_true.
          ELSEIF lv_has_role_eio = abap_false.
            IF ( <itab>-approver = lv_user AND ( <itab>-status2 = '3' OR <itab>-status2 = '5' ) )
*            OR ( ( lv_has_role_cons = abap_true OR lv_has_role_support = abap_true ) AND <itab>-status2 = '3' AND <itab>-status1 <> '5' )
*            AND <itab>-status2 = '3'
              AND <itab>-status1 <> '5'.
              .
              lv_append = abap_true.
            ENDIF.
          ENDIF.
          IF lv_has_role_edu = abap_true.
            IF <itab>-edu_appr_flag NE abap_true.
              CONTINUE.
            ELSE.
              es_entity-injobflag = COND #( WHEN <itab>-approver IS INITIAL THEN abap_true ELSE abap_false ).
              m_read_inf <itab>-pernr '0001' lt_p0001.
              CHECK lt_p0001 IS NOT INITIAL.
              lv_request_werks = lt_p0001[ 1 ]-werks.
              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc EQ 2.
              lv_append = abap_true.
              IF <itab>-approver IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-approver lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-executor = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                  es_entity-fio_appr = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          IF lv_support EQ abap_true.
            lv_append = abap_true.
          ENDIF.
        WHEN 'ZHR_FI_TV_REQ'.
          IF <itab>-pernr EQ lv_pernr_author.
            lv_append = abap_true.
          ELSEIF lv_has_role_tri EQ abap_true.
            m_read_inf <itab>-pernr '0001' lt_p0001.
            CHECK lt_p0001 IS NOT INITIAL.
            lv_request_werks = lt_p0001[ 1 ]-werks.
            CALL FUNCTION 'AUTHORITY_CHECK'
              EXPORTING
                object              = CONV ust12-objct( 'P_ORGIN' )
                field1              = CONV ust12-field( 'PERSA' )
                value1              = CONV ust12-von( lv_request_werks )
              EXCEPTIONS
                user_dont_exist     = 1
                user_is_authorized  = 2
                user_not_authorized = 3
                user_is_locked      = 4
                OTHERS              = 5.
            IF sy-subrc = 2.
              lv_append = abap_true.
            ELSE.
              CONTINUE.
            ENDIF.
            CALL FUNCTION 'RH_AUTHORITY_CHECK_FROM_ADMIN'
              EXPORTING
                pernr  = CONV persno( <itab>-pernr )
                begda  = sy-datum
                endda  = sy-datum
                maint  = abap_true
                uname  = sy-uname
*            TABLES
*               periods = lt_period
              EXCEPTIONS
                OTHERS = 2.
            IF sy-subrc NE 0.
              CONTINUE.
            ENDIF.
            " по задаче 0000022139. 5503542356, Касательно отражений командировок в ЛК
            " отражать уволенных только пользователю со структурными полномочиями на подразделение уволенного
            IF lt_p0001[ 1 ]-plans EQ '99999999'.
              CALL FUNCTION 'RH_AUTHORITY_CHECK_ORGEH'
                EXPORTING
                  objid  = lt_p0001[ 1 ]-orgeh
                  begda  = sy-datum
                  endda  = sy-datum
                  maint  = '1'
                  uname  = sy-uname
*               TABLES
*                 PERIODS               =
                EXCEPTIONS
                  OTHERS = 2.
              IF sy-subrc <> 0.
                CONTINUE.
              ENDIF.
            ENDIF.
          ELSE.
            IF lv_support EQ abap_true.
              lv_append = abap_true.
            ELSE.
              CONTINUE.
            ENDIF.
*            IF lv_support EQ abap_true.
*              lv_append = abap_true.
          ENDIF.
        WHEN OTHERS.
          lv_append = abap_true.
      ENDCASE.

      IF <itab>-approver IS NOT INITIAL.
        CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
          EXPORTING
            user_name               = CONV uname( <itab>-approver )
          IMPORTING
            employeenumber          = lv_pernr
          EXCEPTIONS
            no_employeenumber_found = 1
            subtype_not_available   = 2
            OTHERS                  = 3.
        IF lv_pernr IS NOT INITIAL.
          m_read_inf lv_pernr '0002' lt_p0002.
          IF lt_p0002[] IS NOT INITIAL.
            es_entity-fio_appr = |{ lt_p0002[ 1 ]-nachn } { lt_p0002[ 1 ]-vorna+0(1) }. { lt_p0002[ 1 ]-midnm+0(1) }.|.
          ENDIF.
        ENDIF.
      ENDIF.


      es_entity-reinr = <itab>-reinr.
      es_entity-pernr = <itab>-pernr.
      es_entity-datebegin = <itab>-datebegin.
      es_entity-dateend = <itab>-dateend.

      CONVERT DATE <itab>-datecreate TIME <itab>-timecreate
          INTO TIME STAMP DATA(time_stamp) TIME ZONE tz.

      es_entity-datecreate = time_stamp.  " <itab>-datecreate.
      es_entity-status1 = <itab>-status1.
      es_entity-status2 = <itab>-status2.
      es_entity-city = <itab>-city.
      es_entity-country = <itab>-country.
      es_entity-inits = <itab>-inits.
      es_entity-surname = <itab>-surname.
      es_entity-statustext1 = <itab>-statustext1.
      CASE <itab>-statustext1.
        WHEN 1.
          es_entity-statustext1 = 'Заявка на командировку'.
        WHEN 2.
          es_entity-statustext1 = 'Изменение командировки'.
        WHEN 3.
          es_entity-statustext1 = 'Отмена командировки'.
        WHEN 4.
          es_entity-statustext1 = 'Отчет по командировке'.
        WHEN 5.
          es_entity-statustext1 = 'Авансовый отчет'.
        WHEN OTHERS.
      ENDCASE.
      es_entity-statustext2 = <itab>-statustext2.
      es_entity-tripgoal = <itab>-tripgoal.
      es_entity-persresp = <itab>-persresp.
*    es_entity-executor = <itab>-executor.
*    es_entity-bookingstatus = <itab>-bookingstatus.
      es_entity-subty = <itab>-subty.
*    es_entity-reservuname = <itab>-executor.
      es_entity-reservst = <itab>-bookingstatus.
      CASE <itab>-bookingstatus.
        WHEN 1.
          es_entity-reservsttext = 'Заявка открыта'.
        WHEN 2.
          es_entity-reservsttext = 'Заявка взята в работу'.
        WHEN 3.
          es_entity-reservsttext = 'Заявка на корректировке'.
        WHEN 4.
          es_entity-reservsttext = 'Бронирование на подтверждении'.
        WHEN 5.
          es_entity-reservsttext = 'Бронирование подтверждено'.
        WHEN 6.
          es_entity-reservsttext = 'Бронирование завершено'.
        WHEN 7.
          es_entity-reservsttext = 'Отмена бронирования'.
        WHEN 8.
          es_entity-reservsttext = 'Бронирование отклонено'.
      ENDCASE.

      IF lr_appid IS NOT INITIAL AND
    ( lv_appid = 'ZHR_FI_TV_RES' OR lv_appid = 'ZHR_FI_TV_AVA' ).

        IF ( es_entity-status1 = '1' AND
          ( es_entity-status2 = '10' OR es_entity-status2 = '11' ) )
          OR ( es_entity-status1 = '2' AND es_entity-status2 = '10').
          es_entity-orderstatus = 'Success'.
          es_entity-orderstatustext = 'Подписан'.
        ELSEIF es_entity-persresp = 'X'.
          es_entity-orderstatus = 'Warning'.
          es_entity-orderstatustext = 'Под.личн.отв.'.
        ELSE.
          es_entity-orderstatus = 'None'.
          es_entity-orderstatustext = ''.
        ENDIF.

      ENDIF.

      IF lv_append = abap_true.
        IF lr_surname IS NOT INITIAL.
          lv_surname = lr_surname[ 1 ]-low.
          REPLACE ALL OCCURRENCES OF '''' IN lv_surname WITH ''.
          TRANSLATE lv_surname TO LOWER CASE.
*        lr_surname[ 1 ]-low = lv_surname.
        ENDIF.
        IF lr_city_filter IS NOT INITIAL.
          lv_city = lr_city_filter[ 1 ]-low.
          REPLACE ALL OCCURRENCES OF '''' IN lv_city WITH ''.
          TRANSLATE lv_city TO LOWER CASE.
*        lr_city_filter[ 1 ]-low = lv_city.
        ENDIF.


        DATA(surname_lower) = <itab>-surname.
        DATA(city_lower) = <itab>-city.
        TRANSLATE surname_lower TO LOWER CASE.
        TRANSLATE city_lower TO LOWER CASE.
        IF ( surname_lower CP lv_surname OR lv_surname IS INITIAL )
          AND ( city_lower CP lv_city OR lv_city IS INITIAL ).
          APPEND es_entity TO et_entityset.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ELSE.
* Показываем все заявки, в согласовании которых принимали участие
    SELECT DISTINCT ftpt_req_head~pernr,
                    ftpt_req_head~reinr,
                    ftpt_req_head~dates AS datecreate,
                    ftpt_req_head~location_end AS city,
                    ptrv_head~datv1 AS datebegin,
                    ptrv_head~datb1 AS dateend,
                    zhrt_ui_trip~status_1 AS status1,
                    zhrt_ui_trip~status_2 AS status2,
                    zhrt_ui_trip~approver,
                    zhrt_ui_trip_st~type AS statustext1,
                    zhrt_ui_trip_st~text AS statustext2,
                    pa0002~inits AS inits,
                    pa0002~nachn AS surname,
                    t005t~landx AS country,
                    zhrt_sdescr_t~sdescr AS tripgoal
               FROM zhrt_ui_trip_log AS log
         INNER JOIN ftpt_req_head ON ftpt_req_head~reinr = log~reinr AND ftpt_req_head~pernr = log~pernr
          LEFT JOIN ptrv_head ON ptrv_head~reinr = ftpt_req_head~reinr
          LEFT JOIN zhrt_ui_trip ON zhrt_ui_trip~reinr = ftpt_req_head~reinr
          LEFT JOIN zhrt_ui_trip_st ON zhrt_ui_trip~status_1 = zhrt_ui_trip_st~status_1 AND zhrt_ui_trip~status_2 = zhrt_ui_trip_st~status_2
          LEFT JOIN pa0002 ON ftpt_req_head~pernr = pa0002~pernr AND pa0002~endda >= @sy-datum AND pa0002~begda <= @sy-datum
                AND zhrt_ui_trip~pernr = ftpt_req_head~pernr
          LEFT JOIN t005t ON ftpt_req_head~country_end = t005t~land1
          LEFT JOIN zhrt_sdescr_t ON zhrt_sdescr_t~code = zhrt_ui_trip~trip_goal
          LEFT JOIN ftpt_request ON ftpt_request~reinr = ftpt_req_head~reinr AND ftpt_request~pernr = ftpt_req_head~pernr
              WHERE log~aenam = @lv_user
                AND t005t~spras = 'R'
                AND ftpt_req_head~plan_request = 'R'
                AND ftpt_req_head~reinr IN @lr_reinr
                AND zhrt_ui_trip~approver IN @lr_approver_filter
                AND zhrt_ui_trip~author IN @lr_author_filter
                AND zhrt_ui_trip~status_1 IN @lr_status_1
                AND zhrt_ui_trip~schem IN @lr_schem
                AND ftpt_request~request_type IN @lr_trans_type_filter
                AND ftpt_req_head~reinr IN @lr_reinr
                AND t005t~spras = 'R'
                AND ftpt_req_head~date_beg <= @lv_dateend
                AND ftpt_req_head~date_end >= @lv_datebeg
                AND zhrt_ui_trip~reserv_st IN @lr_reserv_st
                AND zhrt_sdescr_t~code IN @lr_tripgoal
                AND zhrt_ui_trip~status_2 IN @lr_status_2
                AND zhrt_ui_trip~past_trip IN @lr_past_trip
               INTO TABLE @DATA(lt_res).
    et_entityset = CORRESPONDING #( lt_res ).

  ENDIF.

  IF lv_appid = 'ZHR_FI_TV_RES'.
    DATA ls_entity LIKE LINE OF et_entityset.
    DATA          lv_count TYPE int8 VALUE 1.
    SORT et_entityset BY reservst ASCENDING datecreate DESCENDING. " datebegin dateend.
    DO lines( et_entityset ) TIMES.
      ls_entity = et_entityset[ lv_count ].
      IF ls_entity-datebegin >= sy-datum.
        lv_count = lv_count + 1.
        CONTINUE.
      ELSE.
        DELETE et_entityset INDEX lv_count.
        APPEND ls_entity TO et_entityset.
      ENDIF.
    ENDDO.
  ENDIF.

*  DATA ls_paging TYPE /iwbep/s_mgw_paging.
*  ls_paging-top  = io_tech_request_context->get_top( ).
*  ls_paging-skip = io_tech_request_context->get_skip( ).
*
*  /iwbep/cl_mgw_data_util=>paging(
*    EXPORTING
*      is_paging = ls_paging
*    CHANGING
*      ct_data   = et_entityset ).

  IF lv_all IS NOT INITIAL.
    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      CONVERT DATE <entity>-datecreate TIME '000000'
          INTO TIME STAMP time_stamp TIME ZONE tz.
      <entity>-datecreate = time_stamp.
      CASE <entity>-statustext1.
        WHEN 1.
          <entity>-statustext1 = 'Заявка на командировку'.
        WHEN 2.
          <entity>-statustext1 = 'Изменение командировки'.
        WHEN 3.
          <entity>-statustext1 = 'Отмена командировки'.
        WHEN 4.
          <entity>-statustext1 = 'Отчет по командировке'.
        WHEN 5.
          <entity>-statustext1 = 'Авансовый отчет'.
        WHEN OTHERS.
      ENDCASE.
    ENDLOOP.
  ENDIF.

READ TABLE et_entityset INTO er_entity INDEX 1.


ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->REQUESTLISTSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_REQUESTLIST
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD requestlistset_get_entityset.

  DATA: lv_datebeg          TYPE dats VALUE '19700101',
        lv_dateend          TYPE dats VALUE '99991231',
        lv_append           TYPE abap_bool,
        lv_surname          TYPE string,
        lv_city             TYPE string,
        lv_reinr            TYPE string,
        lv_role_res         TYPE agr_name,
        lv_role_tax         TYPE agr_name,
        lv_role_acc         TYPE agr_name,
        lv_role_eio         TYPE agr_name,
        lv_role_tri         TYPE agr_name,
        lv_role_edu         TYPE agr_name,
        lv_role_test        TYPE agr_name,
        lv_role_support     TYPE agr_name,
        lv_role_cons        TYPE agr_name,
        lv_has_role_res     TYPE abap_bool,
        lv_has_role_tax     TYPE abap_bool,
        lv_has_role_acc     TYPE abap_bool,
        lv_has_role_eio     TYPE abap_bool,
        lv_has_role_test    TYPE abap_bool,
        lv_has_role_tri     TYPE abap_bool,
        lv_has_role_support TYPE abap_bool,
        lv_has_role_cons    TYPE abap_bool,
        lv_has_role_edu     TYPE abap_bool,
        lv_mask             TYPE agr_name,
        lr_approver_filter  TYPE RANGE OF sy-uname,
        ls_approver_filter  LIKE LINE OF lr_approver_filter,
        lr_author_filter    TYPE RANGE OF sy-uname,
        ls_author_filter    LIKE LINE OF lr_author_filter,
*        lr_status_filter    TYPE RANGE OF zhr_ident_st,
*        ls_status_filter    LIKE LINE OF lr_status_filter,
        es_entity           TYPE zcl_zhr_fi_tv_req_mpc=>ts_requestlist,
        tz                  TYPE ttzz-tzone VALUE 'EST',
        lt_user_info        TYPE pernr_us_tab,
        lt_p0001            TYPE TABLE OF p0001,
        lt_p0002            TYPE TABLE OF p0002,
        ls_p0002            TYPE p0002,
        lv_pernr            TYPE persno,
        lv_pernr_author     TYPE persno,
        lv_user_werks       TYPE werks,
        lv_request_werks    TYPE persa,
        lv_temp             TYPE string,
        lv_appid            TYPE string,
        lv_user             TYPE uname,
        lr_schem            TYPE RANGE OF rsche.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_surname) = VALUE #( lt_filter[ property = 'SURNAME' ]-select_options OPTIONAL ).
  DATA: lr_pernr TYPE RANGE OF persno.
  DATA(lt_pernr) = VALUE #( lt_filter[ property = 'PERNR' ]-select_options OPTIONAL ).
  LOOP AT lt_pernr ASSIGNING FIELD-SYMBOL(<pernr>).
    APPEND VALUE #( sign = 'I' option = 'EQ' low = CONV persno( <pernr>-low ) ) TO lr_pernr.
  ENDLOOP.
  DATA(lr_city_filter) = VALUE #( lt_filter[ property = 'CITY' ]-select_options OPTIONAL ).
  DATA(lr_country_filter) = VALUE #( lt_filter[ property = 'COUNTRY' ]-select_options OPTIONAL ).
  DATA(lr_trans_type_filter) = VALUE #( lt_filter[ property = 'REQUESTTYPE' ]-select_options OPTIONAL ).
  DATA(lr_reinr) = VALUE #( lt_filter[ property = 'REINR' ]-select_options OPTIONAL ).
  DATA(lr_appid) = VALUE #( lt_filter[ property = 'APPID' ]-select_options OPTIONAL ).
  DATA(lr_reserv_st) = VALUE #( lt_filter[ property = 'RESERVST' ]-select_options OPTIONAL ).
  DATA(lr_datebeg) = VALUE #( lt_filter[ property = 'DATEBEGIN' ]-select_options OPTIONAL ).
  DATA(lr_tripgoal) = VALUE #( lt_filter[ property = 'TRIPGOAL' ]-select_options OPTIONAL ).
  DATA(lr_user) = VALUE #( lt_filter[ property = 'UNAME' ]-select_options OPTIONAL ).
  DATA(lr_status_1) = VALUE #( lt_filter[ property = 'STATUS1' ]-select_options OPTIONAL ).
  DATA(lr_status_2) = VALUE #( lt_filter[ property = 'STATUS2' ]-select_options OPTIONAL ).
  DATA(lr_past_trip) = VALUE #( lt_filter[ property = 'PAST_TRIP' ]-select_options OPTIONAL ).
  DATA(lr_all) = VALUE #( lt_filter[ property = 'ALL' ]-select_options OPTIONAL ).
  DATA(lv_all) = VALUE #( lr_all[ 1 ]-low OPTIONAL ).
  DATA(lr_support) = VALUE #( lt_filter[ property = 'SUPPORT' ]-select_options OPTIONAL ).
  DATA(lv_support) = VALUE #( lr_support[ 1 ]-low OPTIONAL ).
  IF lv_support IS NOT INITIAL.
    CLEAR lv_all.
  ENDIF.
  IF lr_reinr[] IS INITIAL.
    CLEAR lv_support.
  ENDIF.
  lv_user = VALUE #( lr_user[ 1 ]-low OPTIONAL ).
  DEFINE m_read_inf.
    REFRESH &3.
*отключаю проверку полномочий
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
*читаю по ТН из 0002 ИТ данные пользователя
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr     = &1
        infty     = &2
        begda     = sy-datum
        endda     = sy-datum
      TABLES
        infty_tab = &3
      EXCEPTIONS
        OTHERS    = 1.
  END-OF-DEFINITION.

  DEFINE m_get_pernr_by_uname.
*    CLEAR: lt_user_info, &2.
*    CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
*      EXPORTING
*        user                    = &1
*        begda                   = sy-datum
*        endda                   = sy-datum
**       IV_WITH_AUTHORITY       = 'X'
*      TABLES
*        ee_tab                  = lt_user_info.
*    IF lt_user_info IS NOT INITIAL.
*    &2 = lt_user_info[ 1 ]-pernr.
*    ELSE.
*      &2 = 'Нет ТН'.
*    ENDIF.
    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
     EXPORTING
       user_name                     = CONV uname( &1 )
       begindate                     = sy-datum
       enddate                       = sy-datum
     IMPORTING
       employeenumber                = &2
     EXCEPTIONS
       no_employeenumber_found       = 1
       subtype_not_available         = 2
       OTHERS                        = 3.
  END-OF-DEFINITION.

  DEFINE m_check_role.
    SELECT SINGLE agr_name
     INTO @lv_temp
      FROM agr_users
      WHERE uname = @lv_user
        AND from_dat <= @sy-datum
        AND to_dat >= @sy-datum
        AND agr_name LIKE @&1
      .
    IF sy-subrc = 0.
      &2 = abap_true.
    ELSE.
      &2 = abap_false.
    ENDIF.
  END-OF-DEFINITION.

  lv_appid = VALUE #( lr_appid[ 1 ]-low OPTIONAL ).
  lv_user = COND #( WHEN lv_user IS INITIAL THEN sy-uname ELSE lv_user ).

  IF sy-sysid = 'HR3'.
    lv_role_acc = c_test_role_acc.
    lv_role_res = c_test_role_res.
    lv_role_tax = c_test_role_tax.
    lv_role_eio = c_test_role_eio.
    lv_role_tri = c_test_role_trip.
    lv_role_edu = c_test_role_edu.
  ELSE.
    lv_role_acc = c_role_acc.
    lv_role_res = c_role_res.
    lv_role_tax = c_role_tax.
    lv_role_eio = c_role_eio.
    lv_role_tri = c_role_trip.
    lv_role_edu = c_role_edu.
  ENDIF.

  lv_role_cons = c_role_cons.
  lv_role_support = c_role_support.
  m_get_pernr_by_uname lv_user lv_pernr_author.
  m_check_role lv_role_tri lv_has_role_tri.
  m_check_role lv_role_edu lv_has_role_edu.
  m_check_role lv_role_cons lv_has_role_cons.
  m_check_role lv_role_support lv_has_role_support.
*  IF lv_has_role_cons IS INITIAL.
*    CLEAR lv_support.
*  ENDIF.

  IF lv_appid = 'ZHR_FI_TV_RES' OR lv_appid = 'ZHR_FI_TV_AVA'
     OR lv_appid = 'ZHR_FI_TV_APP'.
* проверка ролей

    m_read_inf lv_pernr '0001' lt_p0001.
    IF lt_p0001 IS NOT INITIAL.
      lv_user_werks = lt_p0001[ 1 ]-werks.
    ENDIF.
    m_check_role lv_role_acc lv_has_role_acc.
    m_check_role lv_role_res lv_has_role_res.
    m_check_role lv_role_tax lv_has_role_tax.
    m_check_role lv_role_eio lv_has_role_eio.

*    m_check_role c_test_role lv_has_role_test.
* EXIT если нет ролей
    IF lv_appid = 'ZHR_FI_TV_RES'
      AND lv_has_role_res = abap_false
      AND lv_has_role_test = abap_false
      AND lv_support = abap_false.
      EXIT.
    ENDIF.

    IF lv_appid = 'ZHR_FI_TV_AVA'
      AND lv_has_role_tax = abap_false
      AND lv_has_role_acc = abap_false
      AND lv_has_role_test = abap_false
      AND lv_has_role_cons = abap_false
      AND lv_has_role_support = abap_false.
      EXIT.
    ENDIF.
  ENDIF.


*  IF lr_datebeg IS NOT INITIAL.
*    CALL FUNCTION 'FIAPPL_ADD_DAYS_TO_DATE'
*      EXPORTING
*        i_date      = CONV dats( lr_datebeg[ 1 ]-low )
*        i_days      = 1
*        signum      = '+'
*      IMPORTING
*        e_calc_date = lv_datebeg.
*    CALL FUNCTION 'FIAPPL_ADD_DAYS_TO_DATE'
*      EXPORTING
*        i_date      = CONV dats( lr_datebeg[ 1 ]-high )
*        i_days      = 1
*        signum      = '+'
*      IMPORTING
*        e_calc_date = lv_datebeg.
*  ENDIF.
  IF lr_country_filter[] IS NOT INITIAL.
    IF lv_appid NE 'ZHR_FI_TV_RES'.
*      IF 'RU' IN lr_country_filter.
*        APPEND VALUE #( sign = 'I' option = 'EQ' low = '01' ) TO lr_schem.
*      else.
*        APPEND VALUE #( sign = 'I' option = 'EQ' low = '02' ) TO lr_schem.
*      Endif.
      loop at lr_country_filter ASSIGNING FIELD-SYMBOL(<p_c_filt>).
        if <p_c_filt>-low = 'RU'.
          APPEND VALUE #( sign = 'I' option = 'EQ' low = '01' ) TO lr_schem.
        else.
          APPEND VALUE #( sign = 'I' option = 'EQ' low = '02' ) TO lr_schem.
        endif.
      ENDLOOP.
      sort lr_schem by low.
      delete ADJACENT DUPLICATES FROM lr_schem.
      IF 'XX' IN lr_country_filter.
        delete lr_country_filter WHERE low = 'XX'.
      ENDIF.
*      CLEAR lr_country_filter[].
    ENDIF.
  ENDIF.
  IF lr_datebeg IS NOT INITIAL.
    TRY.
        lv_datebeg = lr_datebeg[ 1 ]-low.
      CATCH cx_root.
    ENDTRY.
    TRY.
        lv_dateend = lr_datebeg[ 1 ]-high.
      CATCH cx_root.
    ENDTRY.
    lv_datebeg = COND #( WHEN lv_datebeg IS INITIAL THEN '18000101' ELSE lv_datebeg ).
    lv_dateend = COND #( WHEN lv_dateend IS INITIAL THEN '99991231' ELSE lv_dateend ).
  ENDIF.
  IF lv_appid = 'ZHR_FI_TV_APP'.
    SELECT SINGLE *
          FROM agr_users
          INTO @DATA(ls_struc)
          WHERE agr_users~uname = @lv_user
            AND agr_users~agr_name = 'ZHR_HR4_FUNC_SUPPORT_3'
          "ztest_fiori_eio_1000
            AND agr_users~from_dat <= @sy-datum
            AND agr_users~to_dat >= @sy-datum.

    IF sy-subrc = 0.
    ENDIF.
  ENDIF.

  IF lr_pernr IS NOT INITIAL.
    CASE lr_pernr[ 1 ]-low.
      WHEN '000000'.
        SELECT SINGLE *
          FROM agr_users
          INTO @DATA(ls_struc1)
          WHERE agr_users~uname = @lv_user
            AND agr_users~agr_name = 'ZHR_HR4_FUNC_SUPPORT_3'
          "ztest_fiori_eio_1000
            AND agr_users~from_dat <= @sy-datum
            AND agr_users~to_dat >= @sy-datum.

        IF sy-subrc = 0.
          DATA ls_status_filter LIKE LINE OF lr_status_1.
          ls_status_filter-sign = 'I'.
          ls_status_filter-option = 'EQ'.
          ls_status_filter-low = '4'.
          APPEND ls_status_filter TO lr_status_1.

        ELSE.
          ls_approver_filter-sign = 'I'.
          ls_approver_filter-option = 'EQ'.
          ls_approver_filter-low = lv_user.
          APPEND ls_approver_filter TO lr_approver_filter.

        ENDIF.
      WHEN '000001'.
*        lr_country_filter = lt_filter[ property = 'COUNTRY' ]-select_options.
*        lr_trans_type_filter = lt_filter[ property = 'TRANSTYPE' ]-select_options.
*        READ TABLE lt_filter WITH TABLE KEY property = 'CITY' INTO ls_filter.
      WHEN OTHERS.
*  else.
****        ls_author_filter-sign = 'I'.
****        ls_author_filter-option = 'EQ'.
****        ls_author_filter-low = lv_user.
****        APPEND ls_author_filter TO lr_author_filter.
    ENDCASE.
  ENDIF.
  IF lr_reinr IS NOT INITIAL.
    lv_reinr = lr_reinr[ 1 ]-low.
    REPLACE ALL OCCURENCES OF '''' IN lv_reinr WITH ''.
    lr_reinr[ 1 ]-low = lv_reinr.
  ENDIF.
  "Собираем данные
  IF lv_all IS INITIAL.
    SELECT DISTINCT
            ftpt_req_head~reinr AS reinr,
            ftpt_req_head~pernr AS pernr,
*          ftpt_req_head~date_beg AS datebegin,
*          ftpt_req_head~date_end AS dateend,
            ptrv_head~datv1 AS datebegin,
            ptrv_head~datb1 AS dateend,
*          cast( ftpt_req_head~dates as char( 8 ) ) && cast( ftpt_req_head~times as char( 6 ) )  as datecreate,
            ftpt_req_head~dates AS datecreate,
            MAX( ftpt_req_head~times ) AS timecreate,
*          ftpt_req_head~status as status,
            zhrt_ui_trip~status_1 AS status1,
            zhrt_ui_trip~status_2 AS status2,
            ftpt_req_head~location_end AS city,
*          ftpt_req_head~country_end as country,
            t005t~landx AS country,
            pa0002~inits AS inits,
            pa0002~nachn AS surname,
            zhrt_ui_trip_st~type AS statustext1,
            zhrt_ui_trip_st~text AS statustext2,
            zhrt_sdescr_t~sdescr AS tripgoal,
            zhrt_ui_trip~pers_resp AS persresp,
            zhrt_ui_trip~subty AS subty,
            zhrt_ui_trip~reserv_uname AS executor,
            zhrt_ui_trip~reserv_st AS bookingstatus,
            zhrt_ui_trip~tax_appr,
            zhrt_ui_trip~tax_uname,
            zhrt_ui_trip~acc_uname,
            zhrt_ui_trip~approver,
            zhrt_ui_trip~edu_appr_flag,
            zhrt_ui_trip~past_trip
    INTO TABLE @DATA(itab)  " corresponding fields of table @et_entityset
    FROM ftpt_req_head
      LEFT JOIN ptrv_head ON ptrv_head~reinr = ftpt_req_head~reinr
        AND ptrv_head~pernr = ftpt_req_head~pernr
      LEFT JOIN pa0002 ON ftpt_req_head~pernr = pa0002~pernr AND pa0002~endda >= @sy-datum AND pa0002~begda <= @sy-datum
*    left join zthr_tr_status on ftpt_req_head~status = zthr_tr_status~status
      LEFT JOIN zhrt_ui_trip ON zhrt_ui_trip~reinr = ftpt_req_head~reinr
        AND zhrt_ui_trip~pernr = ftpt_req_head~pernr
      LEFT JOIN zhrt_ui_trip_st ON zhrt_ui_trip~status_1 = zhrt_ui_trip_st~status_1 AND zhrt_ui_trip~status_2 = zhrt_ui_trip_st~status_2
      LEFT JOIN zhrt_sdescr_t ON zhrt_sdescr_t~code = zhrt_ui_trip~trip_goal
      LEFT JOIN ftpt_request ON ftpt_request~reinr = ftpt_req_head~reinr
        AND ftpt_request~pernr = ftpt_req_head~pernr
      LEFT JOIN zthr_tr_trantype ON zthr_tr_trantype~id = ftpt_request~request_type
      LEFT JOIN t005t ON ftpt_req_head~country_end = t005t~land1
    WHERE ftpt_req_head~plan_request = 'R'
      AND ftpt_req_head~reinr IN @lr_reinr
      AND ftpt_req_head~pernr IN @lr_pernr
      AND zhrt_ui_trip~approver IN @lr_approver_filter
      AND zhrt_ui_trip~author IN @lr_author_filter
      AND zhrt_ui_trip~status_1 IN @lr_status_1
*      AND ( ( ftpt_request~country_beg IN @lr_country_filter OR ftpt_request~country_end IN @lr_country_filter ) )
      AND ( ftpt_req_head~country_end IN @lr_country_filter )
      AND zhrt_ui_trip~schem IN @lr_schem
      AND ftpt_request~request_type IN @lr_trans_type_filter
      AND ftpt_req_head~reinr IN @lr_reinr
      AND t005t~spras = 'R'
      AND ftpt_req_head~date_beg <= @lv_dateend " >= @lv_datebeg "@lv_dateend
      AND ftpt_req_head~date_end >= @lv_datebeg "<= @lv_datebeg "@lv_dateend
      AND zhrt_ui_trip~reserv_st IN @lr_reserv_st
      AND zhrt_sdescr_t~code IN @lr_tripgoal
      AND zhrt_ui_trip~status_2 IN @lr_status_2
      AND zhrt_ui_trip~past_trip IN @lr_past_trip
      GROUP BY ftpt_req_head~reinr,
            ftpt_req_head~pernr,
*          ftpt_req_head~date_beg,
*          ftpt_req_head~date_end,
            ptrv_head~datv1,
            ptrv_head~datb1,
            ftpt_req_head~dates,
            zhrt_ui_trip~status_1,
            zhrt_ui_trip~status_2,
            ftpt_req_head~location_end,
*          ftpt_req_head~country_end,
            t005t~landx,
            pa0002~inits,
            pa0002~nachn,
            zhrt_ui_trip_st~type,
            zhrt_ui_trip_st~text,
            zhrt_sdescr_t~sdescr,
            zhrt_ui_trip~pers_resp,
      zhrt_ui_trip~subty,
      zhrt_ui_trip~reserv_uname,
      zhrt_ui_trip~reserv_st,
      zhrt_ui_trip~tax_appr,
      zhrt_ui_trip~tax_uname,
      zhrt_ui_trip~acc_uname,
      zhrt_ui_trip~approver,
      zhrt_ui_trip~edu_appr_flag,
      zhrt_ui_trip~past_trip


    ORDER BY ftpt_req_head~dates DESCENDING, timecreate DESCENDING.


    LOOP AT itab ASSIGNING FIELD-SYMBOL(<itab>).
      CLEAR es_entity.
      lv_append = abap_false.

      CASE lv_appid.
        WHEN 'ZHR_FI_TV_RES'.
          IF ( <itab>-past_trip = abap_true ).
            CONTINUE.
          ENDIF.
          IF
*      спецификация стр.6 п.1
            ( ( <itab>-status1 = '1' AND
            ( <itab>-status2 = '8' OR <itab>-status2 = '10' OR <itab>-status2 = '11' ) )
            OR ( <itab>-status1 = '2' AND ( <itab>-status2 = '8' OR <itab>-status2 = '10') )
*      спецификация стр.6 п.2
            OR <itab>-persresp = 'X'
*      спецификация стр.6 п.3
            OR <itab>-bookingstatus IS NOT INITIAL )
           AND NOT ( ( <itab>-status1 = '1' OR <itab>-status1 = '2' ) AND ( <itab>-status2 = '1' ) ).
            IF lv_has_role_res = abap_true.
              m_read_inf <itab>-pernr '0001' lt_p0001.
              CHECK lt_p0001 IS NOT INITIAL.
              lv_request_werks = lt_p0001[ 1 ]-werks.

              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc = 2.
              lv_append = abap_true.

            ENDIF.
            IF <itab>-executor IS NOT INITIAL.
*            and ( lv_has_role_res = abap_true or lv_has_role_test = abap_true ).
              m_get_pernr_by_uname <itab>-executor lv_pernr.
              m_read_inf lv_pernr '0002' lt_p0002.
              IF lt_p0002 IS NOT INITIAL.
                ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                es_entity-reservuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
              ELSE.
                es_entity-reservuname = <itab>-executor.
              ENDIF.
            ENDIF.
            IF es_entity-subty IS NOT INITIAL.
              lv_append = abap_true.
            ENDIF.
            IF lv_support EQ abap_true.
              lv_append = abap_true.
              es_entity-bookingstatus = '6'.
            ENDIF.
          ENDIF.

        WHEN 'ZHR_FI_TV_AVA'.
          IF <itab>-status1 = '5' AND
                    ( <itab>-status2 = '3' OR <itab>-status2 = '13'
                    OR <itab>-status2 = '15' OR <itab>-status2 = '16'
                    OR <itab>-status2 = '17').
            m_read_inf <itab>-pernr '0001' lt_p0001.
            CHECK lt_p0001 IS NOT INITIAL.
            lv_request_werks = lt_p0001[ 1 ]-werks.
            IF <itab>-tax_appr = abap_true AND lv_has_role_acc = abap_true.
*             ( lv_has_role_acc = abap_true OR lv_has_role_test = abap_true
              "OR lv_has_role_cons = abap_true OR lv_has_role_support = abap_true
*            ).
              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc = 2.
              lv_append = abap_true.
              IF <itab>-acc_uname IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-acc_uname lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-accuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ELSEIF <itab>-tax_uname IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-tax_uname lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-taxuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ENDIF.
              es_entity-taxappr =  <itab>-tax_appr.
              lv_append = abap_true.
            ELSEIF lv_has_role_tax = abap_true. "OR lv_has_role_test = abap_true.
*            OR lv_has_role_cons = abap_true OR lv_has_role_support = abap_true.
              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc = 2.
              lv_append = abap_true.
              IF <itab>-tax_uname IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-tax_uname lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-taxuname = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ENDIF.

              es_entity-taxappr =  <itab>-tax_appr.
              IF <itab>-tax_appr = abap_true.
                lv_append = abap_false.
              ELSE.
                lv_append = abap_true.
              ENDIF.
            ENDIF.
            IF lv_has_role_tax = abap_true.
              es_entity-injobflag = COND #( WHEN <itab>-tax_uname IS INITIAL THEN abap_true ELSE abap_false ).
            ENDIF.
            IF lv_has_role_acc = abap_true AND <itab>-tax_appr = abap_true AND <itab>-acc_uname IS INITIAL.
              es_entity-injobflag = abap_true.
            ENDIF.
            IF <itab>-status2 = '13'.
              CLEAR es_entity-injobflag.
            ENDIF.
            IF lv_support EQ abap_true.
              lv_append = abap_true.
            ENDIF.
          ENDIF.
        WHEN 'ZHR_FI_TV_APP'.
*        IF ( lv_has_role_eio = abap_true OR lv_has_role_cons = abap_true OR lv_has_role_support = abap_true )  " AND <itab>-status1 <= '4'
          IF lv_has_role_eio = abap_true
            AND ( <itab>-status2 = '5' OR <itab>-status2 = '8' ).
            lv_append = abap_true.
          ELSEIF lv_has_role_eio = abap_false.
            IF ( <itab>-approver = lv_user AND ( <itab>-status2 = '3' OR <itab>-status2 = '5' ) )
*            OR ( ( lv_has_role_cons = abap_true OR lv_has_role_support = abap_true ) AND <itab>-status2 = '3' AND <itab>-status1 <> '5' )
*            AND <itab>-status2 = '3'
              AND <itab>-status1 <> '5'.
              .
              lv_append = abap_true.
            ENDIF.
          ENDIF.
          IF lv_has_role_edu = abap_true.
            IF <itab>-edu_appr_flag NE abap_true.
              CONTINUE.
            ELSE.
              es_entity-injobflag = COND #( WHEN <itab>-approver IS INITIAL THEN abap_true ELSE abap_false ).
              m_read_inf <itab>-pernr '0001' lt_p0001.
              CHECK lt_p0001 IS NOT INITIAL.
              lv_request_werks = lt_p0001[ 1 ]-werks.
              CALL FUNCTION 'AUTHORITY_CHECK'
                EXPORTING
                  object              = CONV ust12-objct( 'P_ORGIN' )
                  field1              = CONV ust12-field( 'PERSA' )
                  value1              = CONV ust12-von( lv_request_werks )
                EXCEPTIONS
                  user_dont_exist     = 1
                  user_is_authorized  = 2
                  user_not_authorized = 3
                  user_is_locked      = 4
                  OTHERS              = 5.
              CHECK sy-subrc EQ 2.
              lv_append = abap_true.
              IF <itab>-approver IS NOT INITIAL.
                m_get_pernr_by_uname <itab>-approver lv_pernr.
                m_read_inf lv_pernr '0002' lt_p0002.
                IF lt_p0002 IS NOT INITIAL.
                  ls_p0002 = CORRESPONDING #( lt_p0002[ 1 ] ).
                  es_entity-executor = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                  es_entity-fio_appr = |{ ls_p0002-nachn } { ls_p0002-inits }|.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
          IF lv_support EQ abap_true.
            lv_append = abap_true.
          ENDIF.
        WHEN 'ZHR_FI_TV_REQ'.
          IF <itab>-pernr EQ lv_pernr_author.
            lv_append = abap_true.
          ELSEIF lv_has_role_tri EQ abap_true.
            m_read_inf <itab>-pernr '0001' lt_p0001.
            CHECK lt_p0001 IS NOT INITIAL.
            lv_request_werks = lt_p0001[ 1 ]-werks.
            CALL FUNCTION 'AUTHORITY_CHECK'
              EXPORTING
                object              = CONV ust12-objct( 'P_ORGIN' )
                field1              = CONV ust12-field( 'PERSA' )
                value1              = CONV ust12-von( lv_request_werks )
              EXCEPTIONS
                user_dont_exist     = 1
                user_is_authorized  = 2
                user_not_authorized = 3
                user_is_locked      = 4
                OTHERS              = 5.
            IF sy-subrc = 2.
              lv_append = abap_true.
            ELSE.
              CONTINUE.
            ENDIF.
            CALL FUNCTION 'RH_AUTHORITY_CHECK_FROM_ADMIN'
              EXPORTING
                pernr  = CONV persno( <itab>-pernr )
                begda  = sy-datum
                endda  = sy-datum
                maint  = abap_true
                uname  = sy-uname
*            TABLES
*               periods = lt_period
              EXCEPTIONS
                OTHERS = 2.
            IF sy-subrc NE 0.
              CONTINUE.
            ENDIF.
            " по задаче 0000022139. 5503542356, Касательно отражений командировок в ЛК
            " отражать уволенных только пользователю со структурными полномочиями на подразделение уволенного
            IF lt_p0001[ 1 ]-plans EQ '99999999'.
              CALL FUNCTION 'RH_AUTHORITY_CHECK_ORGEH'
                EXPORTING
                  objid  = lt_p0001[ 1 ]-orgeh
                  begda  = sy-datum
                  endda  = sy-datum
                  maint  = '1'
                  uname  = sy-uname
*               TABLES
*                 PERIODS               =
                EXCEPTIONS
                  OTHERS = 2.
              IF sy-subrc <> 0.
                CONTINUE.
              ENDIF.
            ENDIF.
          ELSE.
            IF lv_support EQ abap_true.
              lv_append = abap_true.
            ELSE.
              CONTINUE.
            ENDIF.
*            IF lv_support EQ abap_true.
*              lv_append = abap_true.
          ENDIF.
        WHEN OTHERS.
          lv_append = abap_true.
      ENDCASE.

      IF <itab>-approver IS NOT INITIAL.
        CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
          EXPORTING
            user_name               = CONV uname( <itab>-approver )
          IMPORTING
            employeenumber          = lv_pernr
          EXCEPTIONS
            no_employeenumber_found = 1
            subtype_not_available   = 2
            OTHERS                  = 3.
        IF lv_pernr IS NOT INITIAL.
          m_read_inf lv_pernr '0002' lt_p0002.
          IF lt_p0002[] IS NOT INITIAL.
            es_entity-fio_appr = |{ lt_p0002[ 1 ]-nachn } { lt_p0002[ 1 ]-vorna+0(1) }. { lt_p0002[ 1 ]-midnm+0(1) }.|.
          ENDIF.
        ENDIF.
      ENDIF.


      es_entity-reinr = <itab>-reinr.
      es_entity-pernr = <itab>-pernr.
      es_entity-datebegin = <itab>-datebegin.
      es_entity-dateend = <itab>-dateend.

      CONVERT DATE <itab>-datecreate TIME <itab>-timecreate
          INTO TIME STAMP DATA(time_stamp) TIME ZONE tz.

      es_entity-datecreate = time_stamp.  " <itab>-datecreate.
      es_entity-status1 = <itab>-status1.
      es_entity-status2 = <itab>-status2.
      es_entity-city = <itab>-city.
      es_entity-country = <itab>-country.
      es_entity-inits = <itab>-inits.
      es_entity-surname = <itab>-surname.
      es_entity-statustext1 = <itab>-statustext1.
      CASE <itab>-statustext1.
        WHEN 1.
          es_entity-statustext1 = 'Заявка на командировку'.
        WHEN 2.
          es_entity-statustext1 = 'Изменение командировки'.
        WHEN 3.
          es_entity-statustext1 = 'Отмена командировки'.
        WHEN 4.
          es_entity-statustext1 = 'Отчет по командировке'.
        WHEN 5.
          es_entity-statustext1 = 'Авансовый отчет'.
        WHEN OTHERS.
      ENDCASE.
      es_entity-statustext2 = <itab>-statustext2.
      es_entity-tripgoal = <itab>-tripgoal.
      es_entity-persresp = <itab>-persresp.
*    es_entity-executor = <itab>-executor.
*    es_entity-bookingstatus = <itab>-bookingstatus.
      es_entity-subty = <itab>-subty.
*    es_entity-reservuname = <itab>-executor.
      es_entity-reservst = <itab>-bookingstatus.
      CASE <itab>-bookingstatus.
        WHEN 1.
          es_entity-reservsttext = 'Заявка открыта'.
        WHEN 2.
          es_entity-reservsttext = 'Заявка взята в работу'.
        WHEN 3.
          es_entity-reservsttext = 'Заявка на корректировке'.
        WHEN 4.
          es_entity-reservsttext = 'Бронирование на подтверждении'.
        WHEN 5.
          es_entity-reservsttext = 'Бронирование подтверждено'.
        WHEN 6.
          es_entity-reservsttext = 'Бронирование завершено'.
        WHEN 7.
          es_entity-reservsttext = 'Отмена бронирования'.
        WHEN 8.
          es_entity-reservsttext = 'Бронирование отклонено'.
      ENDCASE.

      IF lr_appid IS NOT INITIAL AND
    ( lv_appid = 'ZHR_FI_TV_RES' OR lv_appid = 'ZHR_FI_TV_AVA' ).

        IF ( es_entity-status1 = '1' AND
          ( es_entity-status2 = '10' OR es_entity-status2 = '11' ) )
          OR ( es_entity-status1 = '2' AND es_entity-status2 = '10').
          es_entity-orderstatus = 'Success'.
          es_entity-orderstatustext = 'Подписан'.
        ELSEIF es_entity-persresp = 'X'.
          es_entity-orderstatus = 'Warning'.
          es_entity-orderstatustext = 'Под.личн.отв.'.
        ELSE.
          es_entity-orderstatus = 'None'.
          es_entity-orderstatustext = ''.
        ENDIF.

      ENDIF.

      IF lv_append = abap_true.
        IF lr_surname IS NOT INITIAL.
          lv_surname = lr_surname[ 1 ]-low.
          REPLACE ALL OCCURRENCES OF '''' IN lv_surname WITH ''.
          TRANSLATE lv_surname TO LOWER CASE.
*        lr_surname[ 1 ]-low = lv_surname.
        ENDIF.
        IF lr_city_filter IS NOT INITIAL.
          lv_city = lr_city_filter[ 1 ]-low.
          REPLACE ALL OCCURRENCES OF '''' IN lv_city WITH ''.
          TRANSLATE lv_city TO LOWER CASE.
*        lr_city_filter[ 1 ]-low = lv_city.
        ENDIF.


        DATA(surname_lower) = <itab>-surname.
        DATA(city_lower) = <itab>-city.
        TRANSLATE surname_lower TO LOWER CASE.
        TRANSLATE city_lower TO LOWER CASE.
        IF ( surname_lower CP lv_surname OR lv_surname IS INITIAL )
          AND ( city_lower CP lv_city OR lv_city IS INITIAL ).
          APPEND es_entity TO et_entityset.
        ENDIF.
      ENDIF.
    ENDLOOP.
  ELSE.
* Показываем все заявки, в согласовании которых принимали участие
    SELECT DISTINCT ftpt_req_head~pernr,
                    ftpt_req_head~reinr,
                    ftpt_req_head~dates AS datecreate,
                    ftpt_req_head~location_end AS city,
                    ptrv_head~datv1 AS datebegin,
                    ptrv_head~datb1 AS dateend,
                    zhrt_ui_trip~status_1 AS status1,
                    zhrt_ui_trip~status_2 AS status2,
                    zhrt_ui_trip~approver,
                    zhrt_ui_trip_st~type AS statustext1,
                    zhrt_ui_trip_st~text AS statustext2,
                    pa0002~inits AS inits,
                    pa0002~nachn AS surname,
                    t005t~landx AS country,
                    zhrt_sdescr_t~sdescr AS tripgoal
               FROM zhrt_ui_trip_log AS log
         INNER JOIN ftpt_req_head ON ftpt_req_head~reinr = log~reinr AND ftpt_req_head~pernr = log~pernr
          LEFT JOIN ptrv_head ON ptrv_head~reinr = ftpt_req_head~reinr
          LEFT JOIN zhrt_ui_trip ON zhrt_ui_trip~reinr = ftpt_req_head~reinr
          LEFT JOIN zhrt_ui_trip_st ON zhrt_ui_trip~status_1 = zhrt_ui_trip_st~status_1 AND zhrt_ui_trip~status_2 = zhrt_ui_trip_st~status_2
          LEFT JOIN pa0002 ON ftpt_req_head~pernr = pa0002~pernr AND pa0002~endda >= @sy-datum AND pa0002~begda <= @sy-datum
                AND zhrt_ui_trip~pernr = ftpt_req_head~pernr
          LEFT JOIN t005t ON ftpt_req_head~country_end = t005t~land1
          LEFT JOIN zhrt_sdescr_t ON zhrt_sdescr_t~code = zhrt_ui_trip~trip_goal
          LEFT JOIN ftpt_request ON ftpt_request~reinr = ftpt_req_head~reinr AND ftpt_request~pernr = ftpt_req_head~pernr
              WHERE log~aenam = @lv_user
                AND t005t~spras = 'R'
                AND ftpt_req_head~plan_request = 'R'
                AND ftpt_req_head~reinr IN @lr_reinr
                AND zhrt_ui_trip~approver IN @lr_approver_filter
                AND zhrt_ui_trip~author IN @lr_author_filter
                AND zhrt_ui_trip~status_1 IN @lr_status_1
                AND zhrt_ui_trip~schem IN @lr_schem
                AND ftpt_request~request_type IN @lr_trans_type_filter
                AND ftpt_req_head~reinr IN @lr_reinr
                AND t005t~spras = 'R'
                AND ftpt_req_head~date_beg <= @lv_dateend
                AND ftpt_req_head~date_end >= @lv_datebeg
                AND zhrt_ui_trip~reserv_st IN @lr_reserv_st
                AND zhrt_sdescr_t~code IN @lr_tripgoal
                AND zhrt_ui_trip~status_2 IN @lr_status_2
                AND zhrt_ui_trip~past_trip IN @lr_past_trip
               INTO TABLE @DATA(lt_res).
    et_entityset = CORRESPONDING #( lt_res ).
*    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<ent>).
*      CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
*        EXPORTING
*          user_name               = CONV uname( <ent>-executor )
*        IMPORTING
*          employeenumber          = lv_pernr
*        EXCEPTIONS
*          no_employeenumber_found = 1
*          subtype_not_available   = 2
*          OTHERS                  = 3.
*      IF lv_pernr IS NOT INITIAL.
*        m_read_inf lv_pernr '0002' lt_p0002.
*        IF lt_p0002[] IS NOT INITIAL.
*          <ent>-fio_appr = |{ lt_p0002[ 1 ]-nachn } { lt_p0002[ 1 ]-vorna+0(1) }. { lt_p0002[ 1 ]-midnm+0(1) }.|.
*        ENDIF.
*      ENDIF.
*    ENDLOOP.
  ENDIF.

  IF lv_appid = 'ZHR_FI_TV_RES'.
    DATA ls_entity LIKE LINE OF et_entityset.
    DATA          lv_count TYPE int8 VALUE 1.
    SORT et_entityset BY reservst ASCENDING datecreate DESCENDING. " datebegin dateend.
    DO lines( et_entityset ) TIMES.
      ls_entity = et_entityset[ lv_count ].
      IF ls_entity-datebegin >= sy-datum.
        lv_count = lv_count + 1.
        CONTINUE.
      ELSE.
        DELETE et_entityset INDEX lv_count.
        APPEND ls_entity TO et_entityset.
      ENDIF.
    ENDDO.
  ENDIF.

  DATA ls_paging TYPE /iwbep/s_mgw_paging.
  ls_paging-top  = io_tech_request_context->get_top( ).
  ls_paging-skip = io_tech_request_context->get_skip( ).

  /iwbep/cl_mgw_data_util=>paging(
    EXPORTING
      is_paging = ls_paging
    CHANGING
      ct_data   = et_entityset ).

  IF lv_all IS NOT INITIAL.
    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      CONVERT DATE <entity>-datecreate TIME '000000'
          INTO TIME STAMP time_stamp TIME ZONE tz.
      <entity>-datecreate = time_stamp.
      CASE <entity>-statustext1.
        WHEN 1.
          <entity>-statustext1 = 'Заявка на командировку'.
        WHEN 2.
          <entity>-statustext1 = 'Изменение командировки'.
        WHEN 3.
          <entity>-statustext1 = 'Отмена командировки'.
        WHEN 4.
          <entity>-statustext1 = 'Отчет по командировке'.
        WHEN 5.
          <entity>-statustext1 = 'Авансовый отчет'.
        WHEN OTHERS.
      ENDCASE.
    ENDLOOP.
  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->REQUESTSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TS_REQUEST
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD requestset_get_entity.
  DATA(lt_keys) = io_tech_request_context->get_keys( ).
  DATA: lv_subty TYPE subty,
        lv_pernr TYPE pernr_d,
        lv_reinr TYPE reinr,
*        lv_role_res      TYPE agr_name,
*        lv_role_tax      TYPE agr_name,
*        lv_role_acc      TYPE agr_name,
*        lv_role_eio      TYPE agr_name,
*        lv_role_tri      TYPE agr_name,
*        lv_role_edu      TYPE agr_name,
*        lv_role_emp      TYPE agr_name,
*        lv_role_test     TYPE agr_name,
*        lv_role_cons     TYPE agr_name,
*        lv_has_role_res  TYPE abap_bool,
*        lv_has_role_tax  TYPE abap_bool,
*        lv_has_role_acc  TYPE abap_bool,
*        lv_has_role_eio  TYPE abap_bool,
*        lv_has_role_tri  TYPE abap_bool,
*        lv_has_role_edu  TYPE abap_bool,
*        lv_has_role_emp  TYPE abap_bool,
*        lv_has_role_test TYPE abap_bool,
*        lt_receipts      TYPE TABLE OF zstv_eksh_bapitrvreo,
*        ls_framedata     TYPE  zstv_eksh_framedata,
*        lt_addinfo       TYPE TABLE OF bapitraddi,
*        lt_costdist_trip TYPE TABLE OF  bapitrvcot,
*        lv_temp          TYPE string,
*        lv_zzfistl       TYPE zetv_eksh_fistl,
*        lv_fistl         TYPE ptp02-zzfistl,
*        lv_kostl         TYPE csks-kostl,
*        lv_bukrs         TYPE bukrs,
*        lt_p0001         TYPE TABLE OF p0001,
*        lt_p0002         TYPE TABLE OF p0002,
*        ls_p0002         TYPE p0002,
*        ls_p0001         TYPE p0001,
*        lt_p0017         TYPE TABLE OF p0017,
*        ls_p0017         TYPE p0017,
        lv_user  TYPE uname.
*        lt_advances      TYPE TABLE OF zstv_eksh_advances,
*        lv_user_pernr    TYPE persno.


* Считываем делегирующего пользователя
  DATA(lo_request) = me->mr_request_details.
  DATA(lt_url_param) = lo_request->t_uri_query_parameter.
  READ TABLE lt_url_param ASSIGNING FIELD-SYMBOL(<param>) WITH KEY name = 'Delegate'.
  IF sy-subrc EQ 0.
    lv_user = <param>-value.
    DATA(lv_deleg) = abap_true.
  ELSE.
    lv_user = sy-uname.
  ENDIF.
  DATA(lv_appid) = VALUE #( lt_url_param[ name = 'AppID' ]-value OPTIONAL ).
* проверяем есть ли делегирование в реальности
  CONSTANTS: lc_reppr TYPE hr_rep_prf VALUE 'ZREQ'.
  IF lv_user NE sy-uname AND lv_deleg IS NOT INITIAL.
    SELECT SINGLE us_name FROM hrus_d2 INTO @lv_user
     WHERE us_name = @lv_user
       AND rep_name = @sy-uname
       AND begda <= @sy-datum
       AND endda >= @sy-datum
       AND reppr = @lc_reppr
       AND active = @abap_true.
    IF sy-subrc NE 0.
      EXIT.
    ENDIF.
  ENDIF.
  TRY.
      lv_pernr = lt_keys[ name = 'PERNR' ]-value.
      lv_reinr = lt_keys[ name = 'REINR' ]-value.
      lv_subty = lt_keys[ name = 'SUBTY' ]-value.
    CATCH cx_root.
  ENDTRY.
  get_entity_requestset(
    EXPORTING
      iv_reinr = lv_reinr
      iv_user = lv_user
      iv_appid = lv_appid
    CHANGING
      cs_entity = er_entity
      cv_pernr = lv_pernr
      cv_subty = lv_subty ).



*  IF sy-sysid = 'HR3'.
*    lv_role_acc = c_test_role_acc.
*    lv_role_tax = c_test_role_tax.
*    lv_role_emp = c_test_role_emp.
*    lv_role_eio = c_test_role_eio.
*    lv_role_tri = c_test_role_trip.
*    lv_role_edu = c_test_role_edu.
*  ELSE.
*    lv_role_acc = c_role_acc.
*    lv_role_tax = c_role_tax.
*    lv_role_emp = c_role_emp.
*    lv_role_eio = c_role_eio.
*    lv_role_tri = c_role_trip.
*    lv_role_edu = c_role_edu.
*  ENDIF.
*
*  IF lv_appid EQ 'AVA'.
*    m_check_role lv_role_acc lv_has_role_acc.
*    m_check_role lv_role_tax lv_has_role_tax.
*  ENDIF.
*  m_check_role lv_role_emp lv_has_role_emp.
*  m_check_role lv_role_eio lv_has_role_eio.
*  m_check_role lv_role_tri lv_has_role_tri.
*  m_check_role lv_role_edu lv_has_role_edu.



**  DATA: _bipernr     TYPE REF TO zhr_objbif_pernr,
**        _biplans     TYPE REF TO zhr_objbif_plans,
**        _biorgeh     TYPE REF TO zhr_objbif_orgeh,
**        lt_user_info TYPE pernr_us_tab.

*  IF lv_pernr IS INITIAL.
**    CALL FUNCTION 'HR_GET_EMPLOYEES_FROM_USER'
**      EXPORTING
**        user              = lv_user
**        iv_with_authority = 'X'
**      TABLES
**        ee_tab            = lt_user_info.
**    lv_pernr         = lt_user_info[ 1 ]-pernr.
*    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
*      EXPORTING
*        user_name               = CONV uname( lv_user )
*      IMPORTING
*        employeenumber          = lv_pernr
*      EXCEPTIONS
*        no_employeenumber_found = 1
*        subtype_not_available   = 2
*        OTHERS                  = 3.
*  ENDIF.
*  IF lv_subty IS INITIAL.
*    lv_subty = '21'.
*  ENDIF.


**  CALL FUNCTION 'ZHR_EBDS_OBJBIF_GET'
**    EXPORTING
**      otype  = c_otype_p
**      objid  = lv_pernr
**      datum  = sy-datum
**    CHANGING
**      result = _bipernr
**    EXCEPTIONS
**      OTHERS = 1.
**  IF _bipernr IS NOT INITIAL.
**    TRY.
**        _bipernr->get_orgass(
**          EXPORTING
**            adatum = sy-datum
**          IMPORTING
**            resplans = _biplans
**            resorgeh = _biorgeh
**      ).
***         Наименование должности
**        IF _biplans IS NOT INITIAL.
**          DATA(lv_plnam) = _biplans->get_name( adatum = sy-datum anoauth = abap_true ).
**        ENDIF.
**        IF _biorgeh IS NOT INITIAL.
**          DATA(lv_orgna) = _biorgeh->get_name( adatum = sy-datum anoauth = abap_true ).
***          data: _orgpath  type zhr_objbif_objec_orgpath_t,
***                it_attrib type table of pt1222.
***          _biorgeh->get_orgpath(
***                     exporting
***                       aworigin = 'X'
***                       adatum = sy-datum
***                     importing
***                       result = _orgpath[]
***                     ).
***          sort _orgpath by pobid descending.
**        ENDIF.
**      CATCH cx_root.
**    ENDTRY.
**  ENDIF.
*** Раскомментировать, когда проверят пользователя TEST00004951
***  call function 'Z_TV_BAPI_TRIP_GET_DETAILS'
***    exporting
***      employeenumber          = lv_pernr
***      tripnumber              = lv_reinr
***   IMPORTING
***     FRAMEDATA               = ls_framedata
***   TABLES
***     RECEIPTS                = lt_receipts
***     ADDINFO                 = lt_addinfo
***     COSTDIST_TRIP           = lt_costdist_trip.
**  DATA: lt_costdist TYPE TABLE OF bapitrvcot.
**  CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
**    EXPORTING
**      employeenumber = lv_pernr
**      tripnumber     = lv_reinr
**    IMPORTING
**      framedata      = ls_framedata
**    TABLES
**      advances       = lt_advances
**      receipts       = lt_receipts
**      addinfo        = lt_addinfo
**      costdist_trip  = lt_costdist.
**  m_read_inf lv_pernr '0001' lt_p0001 ls_p0001.
**  IF lt_receipts[] IS NOT INITIAL.
**    lv_fistl = VALUE #( lt_receipts[ 1 ]-zzfistl OPTIONAL ).
**  ELSE.
**    SELECT SINGLE *
**      FROM ptrv_perio
**      INTO @DATA(ls_perio)
**      WHERE pernr = @lv_pernr AND reinr = @lv_reinr.
***    m_read_inf lv_pernr '0001' lt_p0001 ls_p0001.
**    m_read_inf lv_pernr '0017' lt_p0017 ls_p0017.
**    lv_kostl = ls_p0001-kostl. "COND #( WHEN ls_p0001-kostl IS NOT INITIAL THEN ls_p0001-kostl ELSE ls_p0017-kostl ).
**    lv_bukrs = COND #( WHEN ls_p0001-bukrs IS NOT INITIAL THEN ls_p0001-bukrs ELSE ls_p0017-bukrs ).
**    CALL FUNCTION 'Z_FITV_FISTL_GET'
**      EXPORTING
**        comp_code      = ls_p0001-bukrs
**        costcenter     = lv_kostl
**        employeenumber = lv_pernr
**        dep_date       = ls_perio-pdatv
**      IMPORTING
**        funds_ctr      = lv_fistl.
**  ENDIF.


*  types: begin of subtypes,
*           subtype type subty,
*         end of subtypes.
*  data: wa_subtypes type subtypes.
*  data: it_subtypes type table of subtypes.
*  wa_subtypes-subtype = '10'. append wa_subtypes to it_subtypes.
*  wa_subtypes-subtype = '21'. append wa_subtypes to it_subtypes.
*  wa_subtypes-subtype = '22'. append wa_subtypes to it_subtypes.
*  wa_subtypes-subtype = '0910'. append wa_subtypes to it_subtypes.

**  SELECT SINGLE ptrv_head~reinr AS reinr,
**          ptrv_head~datv1 AS datebegin,
**          ptrv_head~datb1 AS dateend,
**          zhrt_ui_trip~status_1 AS status_1,
**          zhrt_ui_trip~status_2 AS status_2,
**          zhrt_ui_trip~trip_report,
**          zhrt_ui_trip~approver AS approver,
***          ftpt_req_head~status as status_1,
**          ptrv_head~zland AS country,
***          ptrv_head~kunde AS reason_text,
**          ptrv_head~pernr AS pernr,
**          ptrv_head~zzzuonr,
**          ptrv_head~kztkt,
**          hrp1000~stext AS position,
**          pa0001~bukrs,
***          pa0002~nachn && @space && pa0002~vorna && @space && pa0002~midnm as fio,
***          pa0290~seria as seria,
***          pa0290~seri0 as seri0,
***          pa0290~nomer as nomer,
***          pa0290~passl as passl,
***          pa0290~datbg as datbg,
***          pa0290~pcode as pcode,
***          pa0290~subty as subty,
**          zhrt_ui_trip_st~type AS statustext1,
**          zhrt_ui_trip_st~text AS statustext2,
***          dd07v~ddtext AS statustext,
**          zhrt_ui_trip~author,
**          zhrt_ui_trip~trip_goal AS trip_goal,
**          zhrt_ui_trip~trip_type AS trip_type,
**          zhrt_ui_trip~mobile_phone AS mobile_phone,
**          zhrt_ui_trip~edit_flag AS edit_flag,
***          zhrt_ui_trip~agreement_file as agreement_file,
***          zhrt_ui_trip~reason_file as reason_file,
***          zhrt_ui_trip~scan_file as scan_file,
**          zhrt_ui_trip~adv_payment,
**          zhrt_ui_trip~pers_resp_text,
**          zhrt_ui_trip~pers_resp,
**          zhrt_ui_trip~reason_trip,
**          zhrt_ui_trip~directive_comment,
**          zhrt_ui_trip~seria,
**          zhrt_ui_trip~seri0,
**          zhrt_ui_trip~nomer,
**          zhrt_ui_trip~passl,
**          zhrt_ui_trip~passl2,
**          zhrt_ui_trip~issue_date,
**          zhrt_ui_trip~pcode,
**          zhrt_ui_trip~subty,
**          zhrt_ui_trip~name_pass AS name,
**          zhrt_ui_trip~last_name_pass AS surname,
**          zhrt_ui_trip~daten AS expire_date,
**          zhrt_ui_trip~citizenship,
**          zhrt_ui_trip~manual_pass AS manualpass,
**          ftpt_req_head~zzsdescr_code,
**          ftpt_req_head~zzbasic_trip AS basic_trip,
**          zhrt_ui_trip~night_work,
**          zhrt_ui_trip~overtime_work,
**          zhrt_ui_trip~issue_date AS datbg,
**          zhrt_ui_trip~reserv_dt_close,
**          zhrt_ui_trip~req_change_rs,
**          zhrt_ui_trip~remind_reserv,
**          zhrt_ui_trip~reserv_st,
**          CAST( ' ' AS CHAR( 100 ) ) AS reserv_st_text,
**          zhrt_ui_trip~reserv_uname AS executor,
**          zhrt_ui_trip~tax_appr,
**          zhrt_ui_trip~tax_uname,
**          zhrt_ui_trip~acc_uname,
**          zhrt_ui_trip~visa,
**          zhrt_ui_trip~past_trip,
**          zhrt_ui_trip~edu_appr_flag,
**          zhrt_ui_trip~history_objectid,
**          ftpt_req_head~location_end AS city
**    INTO @DATA(ls_entity)
**    FROM ptrv_head
**    LEFT JOIN pa0001 ON ptrv_head~pernr = pa0001~pernr AND pa0001~endda >= @sy-datum AND pa0001~begda <= @sy-datum
**    LEFT JOIN pa0002 ON ptrv_head~pernr = pa0002~pernr AND pa0002~endda >= @sy-datum
**    LEFT JOIN hrp1000 ON pa0001~plans = hrp1000~objid AND hrp1000~otype = 'S'
**    LEFT JOIN pa0290 ON ptrv_head~pernr = pa0290~pernr AND pa0290~subty = @lv_subty AND pa0290~endda >= @sy-datum
**    LEFT JOIN ftpt_req_head ON ptrv_head~reinr = ftpt_req_head~reinr
***    LEFT JOIN ZTHR_TR_STATUS ON ftpt_req_head~status = ZTHR_TR_STATUS~status
***    LEFT JOIN dd07v ON ftpt_req_head~status = dd07v~domvalue_l AND dd07v~ddlanguage = @sy-langu AND dd07v~domname = 'FTPD_PSTAT'
**    LEFT JOIN zhrt_ui_trip ON zhrt_ui_trip~reinr = ptrv_head~reinr
**    LEFT JOIN zhrt_ui_trip_st ON zhrt_ui_trip~status_1 = zhrt_ui_trip_st~status_1 AND zhrt_ui_trip~status_2 = zhrt_ui_trip_st~status_2
***    left join ftpt_req_reason on ftpt_req_reason~reinr = ptrv_head~reinr
***      and ftpt_req_reason~pernr = ptrv_head~pernr
**  WHERE ptrv_head~pernr = @lv_pernr
**    AND ptrv_head~reinr = @lv_reinr.
**  IF ls_entity-subty IS NOT INITIAL.
**    lv_subty = ls_entity-subty.
**  ENDIF.
**  SELECT SINGLE waers FROM t001 WHERE bukrs = @ls_entity-bukrs INTO @er_entity-waers.
**
**  CASE ls_entity-reserv_st.
**    WHEN '1'.
**      ls_entity-reserv_st_text = 'Заявка открыта'.
**    WHEN '2'.
**      ls_entity-reserv_st_text = 'Заявка взята в работу'.
**    WHEN '3'.
**      ls_entity-reserv_st_text = 'Заявка на корректировке'.
**    WHEN '4'.
**      ls_entity-reserv_st_text = 'Бронирование на подтверждении'.
**    WHEN '5'.
**      ls_entity-reserv_st_text = 'Бронирование подтверждено'.
**    WHEN '6'.
**      ls_entity-reserv_st_text = 'Бронирование завершено'.
**    WHEN '7'.
**      ls_entity-reserv_st_text = 'Отмена бронирования'.
**    WHEN '8'.
**      ls_entity-reserv_st_text = 'Бронирование отклонено'.
**  ENDCASE.
***    AND ptrv_head~plan_request = 'R'.
**  SELECT text FROM ftpt_req_reason WHERE pernr = @lv_pernr AND reinr = @lv_reinr INTO TABLE @DATA(lt_reason).
**
**  MOVE-CORRESPONDING ls_entity TO er_entity.
**  er_entity-pernr = lv_pernr.
**  er_entity-position = lv_plnam.
**  er_entity-department = lv_orgna.
**  er_entity-zzfistl = lv_fistl.
**  er_entity-reason_text = ls_entity-reason_trip.
**  CLEAR er_entity-reason_text.
**  LOOP AT lt_reason ASSIGNING FIELD-SYMBOL(<reason>).
**    er_entity-reason_text = |{ er_entity-reason_text } { <reason>-text }|.
**  ENDLOOP.
**
**  CASE er_entity-status_1.
**    WHEN 1.
**      er_entity-statustext1 = 'Заявка на командировку'.
**    WHEN 2.
**      er_entity-statustext1 = 'Изменение командировки'.
**    WHEN 3.
**      er_entity-statustext1 = 'Отмена командировки'.
**    WHEN 4.
**      er_entity-statustext1 = 'Отчет по командировке'.
**    WHEN 5.
**      er_entity-statustext1 = 'Авансовый отчет'.
**    WHEN OTHERS.
**  ENDCASE.
**  DATA: _p0002 TYPE TABLE OF p0002,
**        _p0017 TYPE TABLE OF p0017.
***  loop at it_subtypes assigning field-symbol(<it_subtypes>).
**  CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
**  CALL FUNCTION 'HR_READ_INFOTYPE'
**    EXPORTING
**      pernr     = lv_pernr
**      infty     = '0002'
**      begda     = sy-datum
**      endda     = sy-datum
**    TABLES
**      infty_tab = _p0002.
***      if sy-subrc = 0.
**  IF lt_costdist[] IS NOT INITIAL.
**    er_entity-kostl = VALUE #( lt_costdist[ 1 ]-costcenter OPTIONAL ).
**  ELSE.
***    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
***    CALL FUNCTION 'HR_READ_INFOTYPE'
***      EXPORTING
***        pernr     = lv_pernr
***        infty     = '0017'
***        begda     = sy-datum
***        endda     = sy-datum
***      TABLES
***        infty_tab = _p0017.
**    er_entity-kostl = ls_p0001-kostl.
**  ENDIF.
**  IF _p0002 IS NOT INITIAL.
**
**    DATA: lv_surname TYPE pad_nachn,
**          lv_name    TYPE pad_vorna,
**          lv_midname TYPE pad_midnm,
**          lv_natio   TYPE landx50,
**          lv_nati2   TYPE landx50,
**          lv_nati3   TYPE landx50.
**
**    lv_surname = VALUE #( _p0002[ 1 ]-nachn OPTIONAL ).
**    lv_name  = VALUE #( _p0002[ 1 ]-vorna OPTIONAL ).
**    lv_midname = VALUE #( _p0002[ 1 ]-midnm OPTIONAL ).
**    CONCATENATE lv_surname lv_name lv_midname
**    INTO er_entity-fio
**    SEPARATED BY space.
**
**    lv_natio = VALUE #( _p0002[ 1 ]-natio OPTIONAL ).
**    lv_nati2 = VALUE #( _p0002[ 1 ]-nati2 OPTIONAL ).
**    lv_nati3 = VALUE #( _p0002[ 1 ]-nati3 OPTIONAL ).
**
***    m_get_citizenship lv_natio er_entity-citizenship.
**    m_get_citizenship lv_nati2 er_entity-citizenship2.
**    m_get_citizenship lv_nati3 er_entity-citizenship3.
**
**  ENDIF.
***  if ls_entity-manualpass = abap_false.
**  DATA _p0290 TYPE TABLE OF p0290.
**
**  CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
**  CALL FUNCTION 'HR_READ_INFOTYPE'
**    EXPORTING
**      pernr     = lv_pernr
**      infty     = '0290'
**      begda     = sy-datum
**      endda     = sy-datum
**    TABLES
**      infty_tab = _p0290.
**  IF sy-subrc = 0.
**
**  ENDIF.
***
**  IF _p0290 IS NOT INITIAL.
**    LOOP AT _p0290 ASSIGNING FIELD-SYMBOL(<_p0290>) WHERE subty = lv_subty.
**      er_entity-seria = <_p0290>-seria.
**      er_entity-seri0 = <_p0290>-seri0.
**      er_entity-nomer = <_p0290>-nomer.
**      er_entity-passl = <_p0290>-passl.
**      er_entity-passl2 = <_p0290>-passl2.
**      er_entity-datbg = <_p0290>-datbg.
**      er_entity-expire_date = <_p0290>-daten.
**      er_entity-pcode = <_p0290>-pcode.
**      er_entity-subty = <_p0290>-subty.
**    ENDLOOP.
**    IF <_p0290> IS ASSIGNED.
**      IF <_p0290>-daten IS INITIAL AND lv_subty EQ '21'.
**        DATA: lv_20dat      TYPE sy-datum,
**              lv_45dat      TYPE sy-datum,
**              lv_pass_daten TYPE sy-datum,
**              lv_years      TYPE t5a4a-dlyyr VALUE 20,
**              lv_months     TYPE t5a4a-dlymo VALUE 0,
**              lv_days       TYPE t5a4a-dlydy VALUE 0.
**        DATA(lv_gbdat) = VALUE #( _p0002[ 1 ]-gbdat OPTIONAL ).
**        CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
**          EXPORTING
**            date      = lv_gbdat
**            days      = lv_days
**            months    = lv_months
**            signum    = '+'
**            years     = lv_years
**          IMPORTING
**            calc_date = lv_20dat.
**        IF sy-datum < lv_20dat.
**          lv_pass_daten = lv_20dat.
**        ELSE.
**          lv_years = 45.
**          CALL FUNCTION 'RP_CALC_DATE_IN_INTERVAL'
**            EXPORTING
**              date      = lv_gbdat
**              days      = lv_days
**              months    = lv_months
**              signum    = '+'
**              years     = lv_years
**            IMPORTING
**              calc_date = lv_45dat.
**          IF sy-datum < lv_45dat.
**            lv_pass_daten = lv_45dat.
**          ELSE.
**            lv_pass_daten = '99991231'.
**          ENDIF.
**        ENDIF.
**        er_entity-expire_date = lv_pass_daten.
**      ENDIF.
**      UNASSIGN <_p0290>.
**    ENDIF.
**  ENDIF.

**  IF lv_has_role_emp = abap_true.
**    er_entity-role = 'emp'.
**  ENDIF.
**  IF lv_has_role_acc = abap_true AND lv_appid EQ 'AVA'.
**    er_entity-role = 'acc'.
**  ENDIF.
**  IF lv_has_role_tax = abap_true AND lv_appid EQ 'AVA'.
**    er_entity-role = 'tax'.
**  ENDIF.
**  IF lv_has_role_eio = abap_true AND lv_appid NE 'AVA'.
**    er_entity-role = 'eio'.
**  ENDIF.
**  IF lv_has_role_tri = abap_true AND lv_appid NE 'AVA'.
**    er_entity-role = 'tri'.
**  ENDIF.
**  IF lv_has_role_edu = abap_true AND lv_appid NE 'AVA'.
**    er_entity-role = 'edu'.
**  ENDIF.
*  call function 'HR_READ_SUBTYPE'
*    exporting
*      pernr         = lv_pernr
*      infty         = '0290'
*      subty         = '22'
*      no_auth_check = 'X'
*      begda         = sy-datum
*      endda         = sy-datum
*    tables
*      infty_tab     = _p0290.
*  if sy-subrc = 0.
*
*  endif.
**
*  if _p0290 is not initial.
*    loop at _p0290 assigning field-symbol(<_p029022>).
*      er_entity-seria = <_p029022>-seria.
*      er_entity-seri0 = <_p029022>-seri0.
*      er_entity-nomer = <_p029022>-nomer.
*      er_entity-passl = <_p029022>-passl.
*      er_entity-datbg = <_p029022>-datbg.
*      er_entity-expire_date = <_p029022>-daten.
*      er_entity-pcode = <_p029022>-pcode.
*      er_entity-subty = <_p029022>-subty.
*      er_entity-manual_pass = abap_false.
*    endloop.
*  else.
*    er_entity-manual_pass = abap_true.
*  endif.
*  endif.
*  endloop.
*  IF lv_reinr IS INITIAL OR lv_reinr = '0000000000'.
*    CLEAR:
*          er_entity-datebegin,
*          er_entity-dateend,
*          er_entity-status_1,
*          er_entity-status_2,
*          er_entity-approver,
*          er_entity-country,
*          er_entity-reason_text,
*          er_entity-statustext1,
*          er_entity-statustext2,
*          er_entity-trip_goal,
*          er_entity-trip_type,
*          er_entity-mobile_phone,
*          er_entity-agreement_file,
*          er_entity-reason_file,
*          er_entity-scan_file,
*          er_entity-pers_resp_text,
*          er_entity-pers_resp_file,
*          er_entity-reason_trip,
*          er_entity-directive_comment.
*    er_entity-edit_flag = abap_true.
*    er_entity-subty = lv_subty.
*    er_entity-trip_goal = ''.
*    er_entity-trip_type = ''.
*  ENDIF.
*
*  IF ( ls_entity-approver EQ lv_user
*    OR ( ls_entity-tax_uname EQ lv_user AND ls_entity-tax_appr EQ abap_false )
*    OR ( ls_entity-acc_uname EQ lv_user AND ls_entity-tax_appr EQ abap_true ) )
*    AND ls_entity-status_2 NE '8' AND ls_entity-status_2 NE '13' AND ls_entity-status_2 NE '4'.
*    er_entity-change_flag = abap_true.
*  ENDIF.
*  IF ls_entity-trip_goal EQ '011' AND ls_entity-approver EQ lv_user AND ls_entity-edu_appr_flag IS NOT INITIAL.
*    er_entity-change_flag = abap_true.
*  ENDIF.
*  er_entity-tzone = sy-zonlo.

** Кнопка Сформировать приказ
*  IF ( lv_has_role_tri EQ abap_true OR ls_entity-approver EQ lv_user OR lv_user EQ ls_entity-author )
*    AND ( ls_entity-status_2 EQ '10' OR ( ls_entity-status_1 EQ '4' OR ls_entity-status_1 EQ '5' ) ).
*    er_entity-button_order_form = abap_true.
*  ENDIF.
** Ручной ввод суточных (инвертируем флаг)
*  er_entity-daily_hand = COND #( WHEN ls_framedata-pd_meals IS INITIAL THEN abap_true ELSE abap_false ).
** Перевыставление
*  er_entity-re_exp = ls_framedata-zzreinv.
** Внутренний заказ
*  er_entity-order = VALUE #( lt_costdist[ 1 ]-order OPTIONAL ).
** Статус сметы
*  er_entity-status_cost = er_entity-status_cost_text = VALUE #( lt_advances[ 1 ]-zzzplst OPTIONAL ).
** Убытки прошлых лет
*  er_entity-zzpvlos = ls_framedata-zzpvlos.
** Дата утверждения
*  er_entity-date_approval = ls_framedata-exchange_date.
** МВЗ
*  IF ls_framedata-zzfistl IS NOT INITIAL.
*    er_entity-zzfistl = lv_fistl = ls_framedata-zzfistl.
*  ENDIF.
** УЧ/НУ
*  er_entity-zznuuch = ls_framedata-zznuuch.
** Договор
*  er_entity-zzzuonr = ls_framedata-zzzuonr.
** Флаг для кнопки повторного создания ЗПЛ
*  IF ( ls_entity-status_1 = '1' AND ls_entity-status_2 >= '8' )
*  OR ls_entity-status_1 EQ '4' OR ls_entity-status_1 EQ '5'.
*    DATA(lv_ebeln) = VALUE #( lt_advances[ 1 ]-zzzplnr OPTIONAL ).
*    IF lv_ebeln IS INITIAL.
*      er_entity-restart_zpl = abap_true.
*    ENDIF.
*  ENDIF.
** Флаги для приказов
*  IF er_entity-reinr IS NOT INITIAL.
*    DATA: lt_p0298 TYPE TABLE OF p0298.
*    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
*    CALL FUNCTION 'HR_READ_INFOTYPE'
*      EXPORTING
*        pernr     = lv_pernr
*        infty     = '0298'
**       begda     = sy-datum
**       endda     = sy-datum
*      TABLES
*        infty_tab = lt_p0298.
*    LOOP AT lt_p0298 ASSIGNING FIELD-SYMBOL(<p0298>) WHERE reinr = er_entity-reinr.
*      CASE <p0298>-massn.
*        WHEN 'YH'.
*          er_entity-order_cancell = abap_true.
*        WHEN 'Y6'.
*          er_entity-order_change = abap_true.
*        WHEN OTHERS.
*      ENDCASE.
*    ENDLOOP.
*  ENDIF.
** ФИО согласующего
*  IF ls_entity-approver IS NOT INITIAL.
*    CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
*      EXPORTING
*        user_name               = CONV uname( ls_entity-approver )
*      IMPORTING
*        employeenumber          = lv_pernr
*      EXCEPTIONS
*        no_employeenumber_found = 1
*        subtype_not_available   = 2
*        OTHERS                  = 3.
*    IF lv_pernr IS NOT INITIAL.
*      m_read_inf lv_pernr '0002' lt_p0002 ls_p0002.
*      IF lt_p0002[] IS NOT INITIAL.
*        er_entity-fio_appr = |{ ls_p0002-nachn } { ls_p0002-vorna+0(1) }. { ls_p0002-midnm+0(1) }.|.
*      ENDIF.
*    ENDIF.
*  ENDIF.
** Взять в работу для специалиста по обучению
*  IF lv_has_role_edu = abap_true AND ls_entity-edu_appr_flag EQ abap_true.
*    er_entity-in_job_flag = COND #( WHEN ls_entity-approver IS INITIAL THEN abap_true ELSE abap_false ).
*  ENDIF.
** Текст отчета о командировке
*  DATA: lv_textname TYPE tdobname,
*        lv_text     TYPE string.   " del NaumovSM откатил для переноса
**        lv_text     TYPE ZHRE_UI_TRIP_TRIPREPORT.   " ins NaumovSM откатил для переноса
*  lv_textname = ls_entity-history_objectid.
*  CALL METHOD read_text(
*    IMPORTING
*      iv_text_id = lv_textname
*    CHANGING
*      cv_text    = lv_text ).
*  IF lv_text IS NOT INITIAL.
*    er_entity-trip_report = lv_text.
*  ENDIF.
*  lv_textname = 'OC' && ls_entity-history_objectid.
*  CALL METHOD read_text(
*    IMPORTING
*      iv_text_id = lv_textname
*    CHANGING
*      cv_text    = lv_text ).
*  IF lv_text IS NOT INITIAL.
*    er_entity-reason_trip = lv_text.
*  ENDIF.
*
*  CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
*    EXPORTING
*      user_name               = CONV uname( sy-uname )
*    IMPORTING
*      employeenumber          = er_entity-user_pernr
*    EXCEPTIONS
*      no_employeenumber_found = 1
*      subtype_not_available   = 2
*      OTHERS                  = 3.
** Флаг что пользователь имеет роль поддержки
*  m_check_role c_role_cons er_entity-support_flag.
*  IF er_entity-support_flag IS INITIAL.
*    m_check_role c_role_support er_entity-support_flag.
*  ENDIF.
* Защита страницы
*  IF ls_entity-approver NE lv_user AND ls_entity-author NE lv_user.
*    CLEAR er_entity.
*    DATA: lt_header  TYPE /iwbep/t_mgw_name_value_pair,
*          lv_message TYPE string.
*      lv_message = cl_http_utility=>escape_url( 'tech_err' ).
*      APPEND INITIAL LINE TO lt_header ASSIGNING FIELD-SYMBOL(<fs_header>).
*      <fs_header>-name  = 'error'.
*      <fs_header>-value = lv_message .
*      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
*        EXPORTING
*          textid                 = /iwbep/cx_mgw_busi_exception=>business_error
*          http_header_parameters = lt_header
*          message                = CONV #( 'Ошибка доступа' ).
*  ENDIF.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->REQUESTTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_REQUESTTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method REQUESTTYPESET_GET_ENTITYSET.
  SELECT  dd07v~domvalue_l AS code,
          dd07v~ddtext AS name
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  FROM dd07v
  WHERE dd07v~ddlanguage = @sy-langu
      AND dd07v~domname = 'FTPD_REQUEST_TYPE'.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->SAVE_PREPAY
* +-------------------------------------------------------------------------------------------------+
* | [<-->] CS_ENTITY                      TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TS_REQUEST
* | [<-()] RV_MESSAGE                     TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD save_prepay.
    DATA: l_ret                 TYPE bapireturn,
          ls_frame              TYPE zstv_eksh_framedata,
          lt_receipts           TYPE TABLE OF zstv_eksh_bapitrvreo,
          lt_receipts_out       TYPE TABLE OF zsfitv_eksh_receipts,
          ls_rec_out            LIKE LINE OF lt_receipts_out,
          lt_addinfo            TYPE TABLE OF bapitraddi,
          lt_addinfo_out        LIKE lt_addinfo,
          lt_userdata           TYPE ptrv_bapi_t_userdata,
          lt_stopover           TYPE TABLE OF bapitrvsto,
          ls_status             TYPE bapitrvsta,
          lt_return_trip_change TYPE TABLE OF bapiret2,
          lv_fistl              TYPE zetv_eksh_fistl,
          lt_cdtxt              TYPE TABLE OF cdtxt,
          lt_costdist_trip      TYPE TABLE OF bapitrvcot,
          lt_p0001              TYPE TABLE OF p0001,
          lt_card               TYPE zcl_zhr_fi_tv_req_mpc=>tt_card,
          lv_time               TYPE tims.
* Считываем карты
    get_cardset( EXPORTING
                    iv_pernr = cs_entity-pernr
                  CHANGING
                    ct_set = lt_card ).
* Виды расходов pr05
    SELECT b1~spkzl, b1~mwskz, b5~sptxt
      FROM t706b1 AS b1
      JOIN t706b5 AS b5 ON b1~morei = b5~morei AND b1~spkzl = b5~spkzl
      INTO TABLE @DATA(lt_exp_type)
     WHERE b1~morei = '33'
       AND b5~spras = @sy-langu.
* Получаем данные о камандировке
    SELECT SINGLE * FROM zhrt_ui_trip
     WHERE reinr = @cs_entity-reinr
       AND pernr = @cs_entity-pernr
      INTO @DATA(ls_trip_old).
* Считываем статус для pr05
    SELECT SINGLE status_appr, status_calc FROM zhrt_ui_trip_st
     WHERE status_1 EQ @ls_trip_old-status_1
       AND status_2 EQ @ls_trip_old-status_2
      INTO @DATA(ls_st).
    ls_status-approved = ls_st-status_appr.
    ls_status-account = ls_st-status_calc.
* Получаем frame для дальнейшего апдейта
    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = cs_entity-pernr
        tripnumber     = cs_entity-reinr
      IMPORTING
        return         = l_ret
        framedata      = ls_frame
      TABLES
        receipts       = lt_receipts
        addinfo        = lt_addinfo
        costdist_trip  = lt_costdist_trip
        stopover       = lt_stopover.
    ls_frame-zzfistl = cs_entity-zzfistl.
    ls_frame-t_actype = cs_entity-kztkt.
    ls_frame-zzzuonr = cs_entity-zzzuonr.
    ls_frame-zzreinv = abap_true.
    ls_frame-pd_meals = COND #( WHEN cs_entity-daily_hand IS INITIAL THEN abap_true ELSE abap_false ).
    ls_frame-exchange_date = cs_entity-date_approval.
    ls_frame-zzreinv = cs_entity-re_exp.
    ls_frame-zzpvlos = cs_entity-zzpvlos.
    ls_frame-zznuuch = cs_entity-zznuuch.
    IF lt_costdist_trip[] IS INITIAL.
      APPEND INITIAL LINE TO lt_costdist_trip ASSIGNING FIELD-SYMBOL(<costdist>).
    ELSE.
      READ TABLE lt_costdist_trip INDEX 1 ASSIGNING <costdist>.
    ENDIF.
    <costdist>-costcenter = cs_entity-kostl.
    <costdist>-order = cs_entity-order.
    <costdist>-perc_share = 100.
    m_read_inf cs_entity-pernr '0001' lt_p0001.
    <costdist>-co_area = VALUE #( lt_p0001[ 1 ]-bukrs OPTIONAL ).
* Собираем таблицы для отправки в pr05
    DATA(lt_prepay) = cs_entity-toprepay[].
    DELETE lt_prepay WHERE exp_type EQ 'VERP'.
    LOOP AT lt_prepay ASSIGNING FIELD-SYMBOL(<ls_in>) WHERE exp_type NE 'VERP'.
*    LOOP AT cs_entity-toprepay ASSIGNING FIELD-SYMBOL(<ls_in>) WHERE exp_type NE 'VERP'.
      DATA(l_idx) = sy-tabix.
      READ TABLE lt_receipts WITH KEY receiptno = <ls_in>-receiptno INTO DATA(ls_rec).
      MOVE-CORRESPONDING ls_rec TO ls_rec_out.
      lv_fistl = COND #( WHEN ls_rec-zzfistl IS NOT INITIAL THEN ls_rec-zzfistl ELSE lv_fistl ).
      MOVE-CORRESPONDING <ls_in> TO ls_rec_out.
      ls_rec_out-receiptno = l_idx."COND #( WHEN ls_rec-receiptno IS NOT INITIAL THEN ls_rec-receiptno ELSE l_idx ).
      ls_rec_out-rec_rate = <ls_in>-zzukurs_c.
      ls_rec_out-zzccard = VALUE #( lt_card[ incid = <ls_in>-zzccard ]-number OPTIONAL ).
      CONDENSE ls_rec_out-receiptno NO-GAPS.
      ls_rec_out-zzxndfl = COND #( WHEN ls_rec_out-zzxndfl EQ abap_true THEN 'N' ELSE ls_rec_out-zzxndfl ).
      APPEND ls_rec_out TO lt_receipts_out.

      READ TABLE lt_addinfo WITH KEY receiptno = <ls_in>-receiptno INTO DATA(ls_add).
      MOVE-CORRESPONDING <ls_in> TO ls_add.
      ls_add-receiptno = ls_rec_out-receiptno."COND #( WHEN ls_add-receiptno IS NOT INITIAL THEN ls_add-receiptno ELSE l_idx ).
      CONDENSE ls_add-receiptno NO-GAPS.
      IF <ls_in>-receiptno IS INITIAL.
        IF ls_add-receiptno < 10.
          <ls_in>-receiptno = '00' && ls_add-receiptno.
        ELSE.
          <ls_in>-receiptno = '0' && ls_add-receiptno.
        ENDIF.
      ENDIF.
      ls_add-p_doc = COND #( WHEN ls_add-p_doc IS NOT INITIAL THEN ls_add-p_doc ELSE ls_add-receiptno ).
      CONDENSE ls_add-p_doc NO-GAPS.
      ls_add-descript = COND #( WHEN ls_add-descript IS INITIAL THEN VALUE #( lt_exp_type[ spkzl = ls_rec-exp_type ]-sptxt OPTIONAL ) ELSE ls_add-descript ).
      ls_add-multipli = <ls_in>-zzmenge.
      ls_add-country = COND #( WHEN ls_add-country IS INITIAL THEN 'RU' ELSE ls_add-country ).
      APPEND ls_add TO lt_addinfo_out.
      CLEAR: ls_add, ls_rec.
    ENDLOOP.
* Формулировка цели
    DATA: lt_split_reason TYPE soli_tab,
          ls_split_reason LIKE LINE OF lt_split_reason,
          lv_str          TYPE string,
          lt_req_reason   TYPE TABLE OF ftpt_req_reason,
          ls_req_reason   LIKE LINE OF lt_req_reason.
    lv_str = cs_entity-reason_text.
    CALL FUNCTION 'ZHR_SLPIT_STRING'
      EXPORTING
        string        = lv_str
        length        = 72
        use_separator = 'X'
      TABLES
        split         = lt_split_reason.
    LOOP AT lt_split_reason ASSIGNING FIELD-SYMBOL(<line>).
      ls_req_reason-pernr = cs_entity-pernr.
      ls_req_reason-reinr = cs_entity-reinr.
      ls_req_reason-requestvrs = '99'.
      ls_req_reason-plan_request = 'R'.
      ls_req_reason-line = sy-tabix.
      ls_req_reason-text = <line>-line.
      APPEND ls_req_reason TO lt_req_reason.
    ENDLOOP.
    IF sy-subrc NE 0.
      CLEAR sy-subrc.
      ls_req_reason-pernr = cs_entity-pernr.  " '00020483'. " ls_entity-pernr.
      ls_req_reason-reinr = cs_entity-reinr.
      ls_req_reason-requestvrs = '99'.
      ls_req_reason-plan_request = 'R'.
      ls_req_reason-line = '001'.
      ls_req_reason-text = cs_entity-reason_text.
      APPEND ls_req_reason TO lt_req_reason.
    ENDIF.
* Возращаем суточные в таблицу
    ADD 1 TO l_idx.
    LOOP AT cs_entity-toprepay INTO DATA(ls_verp) WHERE exp_type EQ 'VERP'.
      ls_verp-receiptno = l_idx.
      APPEND ls_verp TO lt_prepay.
      ADD 1 TO l_idx.
    ENDLOOP.
    cs_entity-toprepay[] = lt_prepay[].
**********************************************************************
    DATA lt_set LIKE cs_entity-toprepay.
    LOOP AT cs_entity-toprepay ASSIGNING FIELD-SYMBOL(<entity>) WHERE exp_type = 'VERP'.
      APPEND <entity> TO lt_set.
      DELETE TABLE cs_entity-toprepay FROM <entity>.
      CONTINUE.
    ENDLOOP.
    LOOP AT cs_entity-toprepay ASSIGNING <entity>.
      APPEND <entity> TO lt_set.
      DELETE TABLE cs_entity-toprepay FROM <entity>.
      CONTINUE.
    ENDLOOP.
    cs_entity-toprepay[] = lt_set[].
**********************************************************************
** Доп.пункты
*    IF cs_entity-tostopover[] IS NOT INITIAL.
*      LOOP AT cs_entity-tostopover ASSIGNING FIELD-SYMBOL(<stopover>).
*        <stopover>-key_stop = sy-tabix.
*        CASE <stopover>-location.
*          WHEN 'Москва г'.
*            <stopover>-region = 'MSK'.
*          WHEN 'Санкт-Петербург г'.
*            <stopover>-region = 'SPB'.
*          WHEN OTHERS.
*            CLEAR <stopover>-region.
*        ENDCASE.
*        IF lv_time IS INITIAL.
*          <stopover>-dep_time = '000100'.
*        ELSE.
*          <stopover>-dep_time = lv_time.
*          CLEAR lv_time.
*        ENDIF.
*        READ TABLE cs_entity-tostopover INDEX sy-tabix + 1 INTO DATA(ls_stopover).
*        IF sy-subrc EQ 0.
*          <stopover>-arr_date = ls_stopover-dep_date.
*          <stopover>-arr_time = '000100'.
*          IF <stopover>-dep_date EQ <stopover>-arr_date.
*            <stopover>-arr_time = lv_time = '000200'.
*          ENDIF.
*        ELSE.
*          <stopover>-arr_date = ls_frame-arr_date.
*          <stopover>-arr_time = '240000'.
*        ENDIF.
*        <stopover>-t_actype = cs_entity-kztkt.
*      ENDLOOP.
*      CLEAR lt_stopover[].
*      APPEND LINES OF cs_entity-tostopover TO lt_stopover.
*    ENDIF.
** Доп.пункты
    IF cs_entity-tostopover2[] IS NOT INITIAL.
      CLEAR: cs_entity-tostopover[].
      SORT cs_entity-tostopover2 BY zzbegdt ASCENDING.
      LOOP AT cs_entity-tostopover2 ASSIGNING FIELD-SYMBOL(<stopover2>).
*        CHECK sy-tabix NE 1.
        APPEND INITIAL LINE TO cs_entity-tostopover ASSIGNING FIELD-SYMBOL(<stopover>).
        <stopover>-dep_date = <stopover2>-zzbegdt.
        <stopover>-arr_date = <stopover2>-zzenddt.
        <stopover>-location = <stopover2>-zzzort1.
        <stopover>-region = <stopover2>-zzregio.
        <stopover>-country = <stopover2>-zzlndfr.
      ENDLOOP.
      READ TABLE cs_entity-tostopover INDEX 1 ASSIGNING <stopover>.
      ls_frame-location = COND #( WHEN <stopover>-location IS NOT INITIAL THEN <stopover>-location ELSE ls_frame-location ).
      ls_frame-country = COND #( WHEN <stopover>-country  IS NOT INITIAL THEN <stopover>-country ELSE ls_frame-country ).
      CLEAR: ls_frame-out_date, ls_frame-ret_date, ls_frame-out_time, ls_frame-ret_time, ls_frame-ret_coun.
*      LOOP AT cs_entity-tostopover ASSIGNING FIELD-SYMBOL(<stopov>).
*        CHECK sy-tabix NE 1.
*        IF <stopov>-region EQ 'MSK' OR <stopov>-region EQ 'SPB' AND <stopov>-arr_date NE <stopov>-dep_date..
*          <stopov>-dep_date = <stopov>-dep_date + 1.
*          CHECK <stopover> IS ASSIGNED.
*          <stopover>-arr_date = <stopover>-arr_date + 1.
*        ENDIF.
*        READ TABLE cs_entity-tostopover INDEX sy-tabix ASSIGNING <stopover>.
*      ENDLOOP.
      DELETE cs_entity-tostopover WHERE location CS 'Возвращение'.
      LOOP AT cs_entity-tostopover ASSIGNING <stopover>.
        <stopover>-key_stop = sy-tabix.
        CASE <stopover>-location.
          WHEN 'Москва г'.
            <stopover>-region = 'MSK'.
          WHEN 'Санкт-Петербург г'.
            <stopover>-region = 'SPB'.
          WHEN OTHERS.
            IF <stopover>-location IS NOT INITIAL.   " ins NaumovSM
              CLEAR <stopover>-region.
              IF <stopover>-location CP 'Москва'.
                <stopover>-region = 'MSK'.
              ELSEIF <stopover>-location CP 'Санкт-Петербург'.
                <stopover>-region = 'SPB'.
              ENDIF.
* { ins NaumovSM
            ELSE.
              CASE <stopover>-region.
                WHEN 'SPB'.
                  <stopover>-location = 'Санкт-Петербург г'.
                WHEN 'MSK'.
                  <stopover>-location = 'Москва г'.
                WHEN OTHERS.
              ENDCASE.
            ENDIF.
* } ins NaumovSM
        ENDCASE.
        IF lv_time IS INITIAL.
          <stopover>-dep_time = '000100'.
        ELSE.
          <stopover>-dep_time = lv_time.
          CLEAR lv_time.
        ENDIF.
        READ TABLE cs_entity-tostopover INDEX sy-tabix + 1 INTO DATA(ls_stopover).
        IF sy-subrc EQ 0.
          <stopover>-arr_date = ls_stopover-dep_date.
          <stopover>-arr_time = '000100'.
          IF <stopover>-dep_date EQ <stopover>-arr_date.
            <stopover>-arr_time = lv_time = '000200'.
          ENDIF.
        ELSE.
          <stopover>-arr_date = ls_frame-arr_date.
          <stopover>-arr_time = '240000'.
        ENDIF.
        <stopover>-t_actype = cs_entity-kztkt.
      ENDLOOP.


* Страна представительства сотрудника
      DATA: ls_p0001 TYPE p0001.
      m_read_inf cs_entity-pernr '0001' lt_p0001." ls_p0001.
      ls_p0001 = VALUE #( lt_p0001[ 1 ] OPTIONAL ).
      IF ls_p0001-werks = 'C000' AND ls_p0001-gsber = '2010'.
        DATA(lv_country_empl) = 'CN'.
      ELSE.
        lv_country_empl = 'RU'.
      ENDIF.

      CLEAR lv_time.

*      LOOP AT cs_entity-tostopover ASSIGNING FIELD-SYMBOL(<stopov>).
*        CHECK sy-tabix NE 1.
*        IF ( <stopov>-region EQ 'MSK' OR <stopov>-region EQ 'SPB' ) AND <stopov>-arr_date NE <stopov>-dep_date.
*          IF <stopov>-dep_date NE <stopov>-arr_date.
*            <stopov>-dep_date = <stopov>-dep_date + 1.
*          ENDIF.
*          CHECK <stopover> IS ASSIGNED.
*          <stopover>-arr_date = <stopover>-arr_date + 1.
*        ENDIF.
*        READ TABLE cs_entity-tostopover INDEX sy-tabix ASSIGNING <stopover>.
*      ENDLOOP.



*      DATA(lv_tabix) = lines( cs_entity-tostopover ).
*      LOOP AT cs_entity-tostopover ASSIGNING FIELD-SYMBOL(<stopov>).
*        <stopov>-key_stop = sy-tabix.
**              IF <stopov>-region EQ 'MSK' OR <stopov>-region EQ 'SPB'.
**                <stopov>-dep_date = <stopov>-dep_date + 1.
**              ENDIF.
*        IF lv_time IS NOT INITIAL.
*          <stopov>-dep_time = lv_time.
*          CLEAR lv_time.
*        ENDIF.
*        IF <stopov>-dep_date EQ <stopov>-arr_date AND sy-tabix NE lv_tabix.
*          <stopov>-arr_time = '000200'.
*          lv_time = '000200'.
*        ENDIF.
*      ENDLOOP.
      FIELD-SYMBOLS: <stopov2> LIKE LINE OF cs_entity-tostopover.
      lv_time = '000100'.
      DATA(lv_tabix) = lines( cs_entity-tostopover ).
      LOOP AT cs_entity-tostopover ASSIGNING FIELD-SYMBOL(<stopov>).
        <stopov>-key_stop = sy-tabix.
        IF <stopov2> IS ASSIGNED.
          IF <stopov>-dep_date EQ <stopov>-arr_date AND <stopov2>-dep_date EQ <stopov2>-arr_date AND <stopov>-dep_date EQ <stopov2>-arr_date.
            <stopov>-dep_time = lv_time.
            lv_time+2(2) = lv_time+2(2) + 1.
            <stopov>-arr_time = lv_time.
          ELSE.
            IF <stopov>-dep_date EQ <stopov>-arr_date AND sy-tabix NE lv_tabix.
              lv_time+2(2) = <stopov>-dep_time+2(2) + 1.
              <stopov>-arr_time = lv_time.

            ELSE.
              lv_time = '000100'.
              <stopov>-arr_time = lv_time.
              IF <stopov2>-arr_date EQ <stopov>-dep_date.
                <stopov>-dep_time = <stopov2>-arr_time.
              ENDIF.
            ENDIF.
          ENDIF.
        ELSE.
          IF <stopov>-dep_date EQ <stopov>-arr_date AND sy-tabix NE lv_tabix.
            lv_time+2(2) = <stopov>-dep_time+2(2) + 1.
            <stopov>-arr_time = lv_time.
          ELSE.
            lv_time = '000100'.
            <stopov>-arr_time = lv_time.
          ENDIF.
        ENDIF.
        READ TABLE cs_entity-tostopover INDEX sy-tabix ASSIGNING <stopov2>.
      ENDLOOP.



      IF cs_entity-tostopover[] IS NOT INITIAL.
        READ TABLE cs_entity-tostopover INDEX lines( cs_entity-tostopover ) ASSIGNING <stopov>.
        IF sy-subrc EQ 0.
          <stopov>-arr_time = '240000'.
          <stopov>-arr_date = ls_frame-arr_date.
        ENDIF.
      ENDIF.
* 27.01.2021 *****************************
      DATA lv_count_country TYPE i.
      READ TABLE cs_entity-tostopover INDEX lines( cs_entity-tostopover ) ASSIGNING <stopov>.
      IF sy-subrc EQ 0.
        IF <stopov>-dep_date EQ <stopov>-arr_date.
          READ TABLE cs_entity-tostopover INDEX 1 ASSIGNING <stopov>.
          IF sy-subrc EQ 0.
            IF <stopov>-country EQ 'RU'.
              LOOP AT cs_entity-tostopover ASSIGNING <stopover> WHERE country NE 'RU'.
                lv_count_country = lv_count_country + 1.
              ENDLOOP.
              IF lv_count_country EQ 1.
                DATA(lv_ex) = abap_true.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      READ TABLE cs_entity-tostopover INDEX 1 ASSIGNING <stopov>.
      IF <stopov>-country EQ 'RU'.
        DATA(lv_first_ru) = abap_true.
      ENDIF.
      IF lv_ex IS INITIAL.
******************************************
* Убираем первую строку где страна не равна стране представительства сотрудника
        DATA lv_skip TYPE flag.
        LOOP AT cs_entity-tostopover ASSIGNING <stopov> WHERE country NE lv_country_empl.
          DATA(lv_tabix_last_ne_ru) = sy-tabix.
          DATA(lv_last_ne_ru_date) = <stopov>-arr_date.
          DATA(lv_last_ne_ru_tims) = <stopov>-arr_time.
          DATA(lv_last_ne_ru_coun) = <stopov>-country.
          IF lv_skip IS INITIAL.
            DATA(lv_first_ne_ru_date) = <stopov>-dep_date.
*            DATA(lv_first_ne_ru_tims) = <stopov>-dep_time.
            DATA(lv_first_ne_ru_coun) = <stopov>-country.
            DATA(lv_first_ne_ru_loca) = <stopov>-location.
            DATA(lv_tabix_first_ne_ru) = sy-tabix.
            lv_skip = abap_true.
            TRY.
                READ TABLE cs_entity-tostopover INDEX lv_tabix_last_ne_ru - 1 ASSIGNING <stopover>.
              CATCH cx_root.
            ENDTRY.
            IF <stopover> IS ASSIGNED.
              <stopover>-arr_time = '000000'.
            ENDIF.
            DELETE TABLE cs_entity-tostopover FROM <stopov>.
          ENDIF.
          UNASSIGN <stopover>.
        ENDLOOP.

** 2.  Для первой строки STOPOVER DEP_TIME = DEP_TIME+1 минута.
*            READ TABLE lt_stopover INDEX 1 ASSIGNING <stopov>.
*            IF sy-subrc EQ 0.
*              <stopov>-dep_time+2(2) = <stopov>-dep_time+2(2) + 1.
*              IF <stopov>-dep_time+2(2) = '60'.
*                <stopov>-dep_time+2(2) = '00'.
*                <stopov>-dep_time+0(2) = <stopov>-dep_time+0(2) + 1.
*              ENDIF.
*            ENDIF.
        IF lv_tabix_first_ne_ru NE lv_tabix_last_ne_ru OR lv_skip EQ abap_true.
          READ TABLE cs_entity-tostopover INDEX lv_tabix_last_ne_ru ASSIGNING <stopov>.
          IF sy-subrc EQ 0.
            IF <stopov>-dep_date NE <stopov>-arr_date.
              <stopov>-arr_time = '000000'.
            ENDIF.
          ENDIF.

** 3.  Если после строки с последней зарубежной страной есть строка со страной сотрудника представительства
** то для этой строки (COUNTRY_BEG <> стране представительства сотрудника) увеличить время на минуту
*          READ TABLE cs_entity-tostopover INDEX lv_tabix_last_ne_ru + 1 ASSIGNING <stopov>.
*          IF sy-subrc EQ 0.
*            <stopov>-dep_time+2(2) = <stopov>-dep_time+2(2) + 1.
*            IF <stopov>-dep_time+2(2) = '60'.
*              <stopov>-dep_time+2(2) = '00'.
*              <stopov>-dep_time+0(2) = <stopov>-dep_time+0(2) + 1.
*            ENDIF.
*          ENDIF.
        ENDIF.
      ENDIF.
*      lv_last_ne_ru_tims = '000000'.
      IF cs_entity-tostopover[] IS NOT INITIAL.
        READ TABLE cs_entity-tostopover INDEX lines( cs_entity-tostopover ) ASSIGNING <stopov>.
        IF <stopov>-arr_time EQ '000000' AND lv_first_ru NE abap_true.
          <stopov>-arr_time = lv_last_ne_ru_tims = '240000'.
          <stopov>-arr_date = ls_frame-arr_date.
        ENDIF.
      ENDIF.





      CLEAR lt_stopover[].
      APPEND LINES OF cs_entity-tostopover TO lt_stopover.

      IF lv_first_ne_ru_date IS NOT INITIAL.
        ls_frame-location = lv_first_ne_ru_loca.
        ls_frame-country = lv_first_ne_ru_coun.
        ls_frame-out_date = lv_first_ne_ru_date.
        ls_frame-out_time = '000000'. "lv_first_ne_ru_tims.
        ls_frame-ret_date = lv_last_ne_ru_date.
        IF lv_tabix_first_ne_ru NE lv_tabix_last_ne_ru." OR lv_skip EQ abap_true.
          ls_frame-ret_time = lv_last_ne_ru_tims.
        ELSE.
          ls_frame-ret_time = '000000'.
        ENDIF.
        ls_frame-ret_coun = lv_last_ne_ru_coun.
      ENDIF.
    ENDIF.
* Передаем данные в pr05

    TRY.
        CALL FUNCTION 'Z_TV_BAPI_TRIP_CHANGE'
          EXPORTING
            employeenumber = cs_entity-pernr
            tripnumber     = cs_entity-reinr
            framedata      = ls_frame
            status         = ls_status
          TABLES
            return         = lt_return_trip_change
            receipts       = lt_receipts_out
            addinfo        = lt_addinfo_out
            costdist_trip  = lt_costdist_trip
            stopover       = lt_stopover.
*        userdata       = lt_userdata. смета пока не отправлется
      CATCH cx_root INTO DATA(lv_dummy).
        rv_message = lv_dummy->get_text( ).
    ENDTRY.
    READ TABLE lt_return_trip_change WITH KEY id = '56' number = '185' TRANSPORTING NO FIELDS.
    IF sy-subrc EQ 0. "Если сохранение прошло успешно то меняем статус в trip

      DATA(ls_trip_new) = ls_trip_old.
*      ls_trip_new-reason_trip = cs_entity-reason_text.
      ls_trip_new-rdate = sy-datum.
      ls_trip_new-rtime = sy-uzeit.
*      ls_trip_new-status_1 = '5'.
*      CASE cs_entity-action.
*        WHEN '6'." отправить
*          ls_trip_new-status_2 = '3'. "Авансовый отчет.На согласовании
*          CLEAR ls_trip_new-approver.
*        WHEN '7'." сохранить
**          ls_trip_new-approver = ls_trip_new-author.
*          ls_trip_new-status_2 = '1'. "Авансовый отчет.Создан
*        WHEN OTHERS.
*      ENDCASE.

*      CHECK cs_entity-action NE '10'.
      MODIFY zhrt_ui_trip FROM ls_trip_new.

      CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
        EXPORTING
          objectid            = CONV cdobjectv( cs_entity-pernr && cs_entity-reinr )
          tcode               = sy-tcode
          utime               = sy-uzeit
          udate               = sy-datum
          username            = sy-uname
*         PLANNED_CHANGE_NUMBER   = ' '
*         object_change_indicator = lv_change_indicator
*         PLANNED_OR_REAL_CHANGES = ' '
*         NO_CHANGE_POINTERS  = ' '
*         upd_icdtxt_zhr_fio_trip = lv_change_indicator
*         UPD_ZHRT_UI_REQUEST = ' '
          n_zhrt_ui_trip      = ls_trip_new
          o_zhrt_ui_trip      = ls_trip_old
          upd_zhrt_ui_trip    = 'U'
        TABLES
          icdtxt_zhr_fio_trip = lt_cdtxt.
    ELSE.
      READ TABLE lt_return_trip_change INDEX 1 ASSIGNING FIELD-SYMBOL(<mes>).
      CHECK sy-subrc EQ 0.
      MESSAGE ID <mes>-id TYPE <mes>-type NUMBER <mes>-number
         WITH <mes>-message_v1 <mes>-message_v2 <mes>-message_v3 <mes>-message_v4
         INTO rv_message.
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->STATUSFILTERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_STATUSFILTER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD statusfilterset_get_entityset.

  DATA lv_appid TYPE string.
  DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
  DATA(lr_appid) = VALUE #( lt_filter[ property = 'APPID' ]-select_options OPTIONAL ).
  lv_appid = VALUE #( lr_appid[ 1 ]-low OPTIONAL ).
  CHECK lv_appid = 'ZHR_FI_TV_AVA'.

  SELECT DISTINCT status_2 text
    INTO TABLE et_entityset
    FROM zhrt_ui_trip_st
   WHERE status_1 = '5'.

ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->STATUSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_STATUS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD statusset_get_entityset.
    SELECT *
      INTO TABLE @DATA(lt_st)
      FROM zhrt_ui_trip_st.

    LOOP AT lt_st ASSIGNING FIELD-SYMBOL(<st>).
      APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      MOVE-CORRESPONDING <st> TO <entity>.
      CASE <st>-type.
        WHEN 1.
          <entity>-type = 'Заявка на командировку'.
        WHEN 2.
          <entity>-type = 'Изменение командировки'.
        WHEN 3.
          <entity>-type = 'Отмена командировки'.
        WHEN 4.
          <entity>-type = 'Отчет о командировке'.
        WHEN 5.
          <entity>-type = 'Авансовый отчет'.
        WHEN OTHERS.
      ENDCASE.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->STOPOVER2SET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_STOPOVER2
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD stopover2set_get_entityset.
    DATA: lv_reinr           TYPE reinr,
          lv_pernr           TYPE persno,
          ls_frame           TYPE zstv_eksh_framedata,
          ls_return          TYPE bapiret2_t,
          lt_expenses_detail TYPE ztfitv_eksh_daily_exp_detail,
          lv_anzta           TYPE anzta.

    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    TRY.
        lv_reinr = lt_keys[ name = 'REINR' ]-value.
        lv_pernr = lt_keys[ name = 'PERNR' ]-value.
      CATCH cx_root.
    ENDTRY.
    CALL FUNCTION 'Z_FITV_DAILY_EXPENSES_GET'
      EXPORTING
        employeenumber  = lv_pernr
        tripnumber      = lv_reinr
        exchange_date   = abap_true
      IMPORTING
        expenses_detail = lt_expenses_detail
        return          = ls_return.
    SELECT * FROM t706v
            WHERE morei = '33'
              AND kzpah = 'P'
              AND kztkt = ''
              AND begda <= @sy-datum
              AND endda >= @sy-datum
             INTO TABLE @DATA(lt_daily).
    LOOP AT lt_expenses_detail ASSIGNING FIELD-SYMBOL(<exd>).
      APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
      MOVE-CORRESPONDING <exd> TO <entity>.
*      IF <entity>-zzbegdt = <entity>-zzenddt.
*        lv_anzta = '001'.
*      ELSE.
*        lv_anzta = '999'.
*      ENDIF.
*      IF <entity>-zzlndfr EQ 'RU'.
*        <entity>-betfa = VALUE #( lt_daily[ lndgr = 'RU' anzta = lv_anzta waers = <entity>-zzwaers rgion = <entity>-zzregio ]-betfa OPTIONAL ).
*      ELSE.
*        <entity>-betfa = VALUE #( lt_daily[ lndgr = 'ABR' anzta = lv_anzta ]-betfa OPTIONAL ).
*      ENDIF.
      <entity>-betfa = <exd>-zzpreis.
      <entity>-zzmenge = <entity>-zzenddt - <entity>-zzbegdt + 1.
      IF <exd>-zzzikey CS 'H'.
        <entity>-zzzort1 = 'Возвращение в свою страну'.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->STOPOVERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_STOPOVER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD stopoverset_get_entityset.
    DATA: lv_reinr  TYPE reinr,
          lv_pernr  TYPE persno,
          ls_frame  TYPE zstv_eksh_framedata,
          ls_return TYPE bapireturn.

    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    TRY.
        lv_reinr = lt_keys[ name = 'REINR' ]-value.
        lv_pernr = lt_keys[ name = 'PERNR' ]-value.
      CATCH cx_root.
    ENDTRY.

    CALL FUNCTION 'Z_TV_BAPI_TRIP_GET_DETAILS'
      EXPORTING
        employeenumber = lv_pernr
        tripnumber     = lv_reinr
      IMPORTING
        framedata      = ls_frame
        return         = ls_return
      TABLES
        stopover       = et_entityset.
    IF ls_return-code EQ '56804'. "Если все ок

    ELSE.
      CHECK lv_reinr IS NOT INITIAL.
      DATA: lt_header  TYPE /iwbep/t_mgw_name_value_pair,
            lv_message TYPE string.
      lv_message = cl_http_utility=>escape_url( 'tech_err' ).
      MESSAGE ID sy-msgid TYPE sy-msgty NUMBER sy-msgno WITH sy-msgv1 sy-msgv2 sy-msgv3 sy-msgv4 INTO DATA(lv_msg).
      lv_msg = |{ TEXT-011 } { lv_msg }|.
      APPEND INITIAL LINE TO lt_header ASSIGNING FIELD-SYMBOL(<fs_header>).
      <fs_header>-name  = 'error'.
      <fs_header>-value = lv_message .
      RAISE EXCEPTION TYPE /iwbep/cx_mgw_busi_exception
        EXPORTING
          textid                 = /iwbep/cx_mgw_busi_exception=>business_error
          http_header_parameters = lt_header
          message                = CONV #( lv_msg ).
    ENDIF.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TAKE
* +-------------------------------------------------------------------------------------------------+
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_FUNC_IMPORT
* | [<---] ER_DATA                        TYPE REF TO DATA
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD take.
    DATA(lt_parameters) = io_tech_request_context->get_parameters( ).
    DATA: "lt_dayattr type table of casdayattr,
      lv_reinr  TYPE reinr,
      lv_pernr  TYPE pernr0,
      lv_status TYPE char1,
      ls_entity TYPE zcl_zhr_fi_tv_req_mpc_ext=>ts_reserve,
      lt_cdtxt  TYPE TABLE OF cdtxt.

    lv_reinr = lt_parameters[ name = 'REINR' ]-value.
    lv_pernr = lt_parameters[ name = 'PERNR' ]-value.
    lv_status = lt_parameters[ name = 'STATUS' ]-value.

    SELECT SINGLE * FROM zhrt_ui_trip
      INTO @DATA(ls_ztrip)
      WHERE zhrt_ui_trip~reinr = @lv_reinr
        AND zhrt_ui_trip~pernr = @lv_pernr.
    DATA(ls_ztrip_old) = ls_ztrip.

    ls_ztrip-reserv_st = '2'.
    ls_ztrip-reserv_uname = sy-uname.

    MODIFY zhrt_ui_trip FROM ls_ztrip.
    IF sy-subrc EQ 0.
      CALL FUNCTION 'ZHR_FIO_TRIP_WRITE_DOCUMENT'
        EXPORTING
          objectid            = CONV cdobjectv( ls_ztrip-pernr && ls_ztrip-reinr )
          tcode               = sy-tcode
          utime               = sy-uzeit
          udate               = sy-datum
          username            = sy-uname
*         PLANNED_CHANGE_NUMBER   = ' '
*         object_change_indicator = lv_change_indicator
*         PLANNED_OR_REAL_CHANGES = ' '
*         NO_CHANGE_POINTERS  = ' '
*         upd_icdtxt_zhr_fio_trip = lv_change_indicator
*         UPD_ZHRT_UI_REQUEST = ' '
          n_zhrt_ui_trip      = ls_ztrip
          o_zhrt_ui_trip      = ls_ztrip_old
          upd_zhrt_ui_trip    = 'U'
        TABLES
          icdtxt_zhr_fio_trip = lt_cdtxt.
    ENDIF.

    copy_data_to_ref( EXPORTING is_data = ls_entity
                          CHANGING cr_data = er_data ).
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TAXNDSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TAXNDS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD taxndsset_get_entityset.
    DATA: lt_return_tab TYPE TABLE OF ddshretval,
          ls_shlp       TYPE  shlp_descr,
          l_mwskz       TYPE t007a-mwskz,
          l_text1       TYPE t007s-text1,
          lr_mwskz      TYPE RANGE OF t007a-mwskz.
    lr_mwskz = VALUE #( sign = 'I' option = 'EQ' ( low = 'U3' )
                                                 ( low = 'UR' )
                                                 ( low = 'Q0' )
                                                 ( low = 'Q8' )
                                                 ( low = 'QB' ) ).
    CALL FUNCTION 'F4IF_GET_SHLP_DESCR'
      EXPORTING
        shlpname = 'SH_T007A_V'
      IMPORTING
        shlp     = ls_shlp.
    APPEND VALUE #( shlpfield = 'KALSM' sign = 'I' option = 'EQ' low = 'TAXRU' ) TO ls_shlp-selopt.
    CALL FUNCTION 'F4IF_SELECT_VALUES'
      EXPORTING
        shlp           = ls_shlp
        call_shlp_exit = 'X'
      TABLES
        return_tab     = lt_return_tab.
    LOOP AT lt_return_tab ASSIGNING FIELD-SYMBOL(<ret1>) GROUP BY ( key = <ret1>-recordpos ).
      LOOP AT GROUP <ret1> ASSIGNING FIELD-SYMBOL(<ret2>).
        CHECK l_mwskz IS INITIAL OR l_text1 IS INITIAL.
        CASE <ret2>-fieldname.
          WHEN 'MWSKZ'.
            l_mwskz = <ret2>-fieldval.
          WHEN 'TEXT1'.
            l_text1 = <ret2>-fieldval.
          WHEN OTHERS.
        ENDCASE.
        CHECK l_mwskz IS NOT INITIAL AND l_text1 IS NOT INITIAL.
        APPEND VALUE #( mwskz = l_mwskz text1 = l_text1 ) TO et_entityset.
        CLEAR: l_mwskz, l_text1.
        EXIT.
      ENDLOOP.
    ENDLOOP.

    DELETE et_entityset WHERE mwskz NOT IN lr_mwskz.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TIMELINESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TIMELINE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD timelineset_get_entityset.
    DATA: lt_history   TYPE TABLE OF cdred,
          lt_route     TYPE zhr_ui_trip_approver_t,
          lt_route_all TYPE zhr_ui_trip_approver_t_all,
          l_pernr      TYPE persno,
          l_reinr      TYPE zehr_reinr,
          lt_trip      TYPE TABLE OF zhrt_ui_trip,
          ls_trip      LIKE LINE OF lt_trip,
          ls_trip_prew LIKE LINE OF lt_trip,
          lt_res       TYPE TABLE OF zhrt_ui_trip,
          ls_res       LIKE LINE OF lt_res,
          l_text       TYPE string,
          l_txt_route  TYPE string,
          l_st         TYPE string,
          l_idx        TYPE i,
          lt_p0002     TYPE TABLE OF p0002,
          lt_p0002_ws  TYPE TABLE OF p0002,
          lv_app_id    TYPE zhre_appid.
    FIELD-SYMBOLS: <entity>         LIKE LINE OF et_entityset,
                   <ls_status>      TYPE zhrt_ui_timln_ty,
                   <ls_status_virt> TYPE zhrt_ui_timln_ty.
    CONSTANTS: lc_obj_class TYPE cdobjectcl VALUE 'ZHR_FIO_TRIP',
               lc_res_class TYPE cdobjectcl VALUE 'ZHR_FIO_TRIP_RS',
               c_01         TYPE zhr_ident_st VALUE '01',
               c_02         TYPE zhr_ident_st VALUE '02',
               c_03         TYPE zhr_ident_st VALUE '03',
               c_04         TYPE zhr_ident_st VALUE '04',
               c_05         TYPE zhr_ident_st VALUE '05',
               c_06         TYPE zhr_ident_st VALUE '06',
               c_07         TYPE zhr_ident_st VALUE '07',
               c_08         TYPE zhr_ident_st VALUE '08',
               c_09         TYPE zhr_ident_st VALUE '09',
               c_10         TYPE zhr_ident_st VALUE '10',
               c_11         TYPE zhr_ident_st VALUE '11'.
    DEFINE m_read_inf.
      REFRESH &3.
*отключаю проверку полномочий
      CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
*читаю по ТН из 0002 ИТ данные пользователя
      CALL FUNCTION 'HR_READ_INFOTYPE'
        EXPORTING
          pernr     = &1
          infty     = &2
          begda     = sy-datum
          endda     = sy-datum
        TABLES
          infty_tab = &3
        EXCEPTIONS
          OTHERS    = 1.
    END-OF-DEFINITION.
    DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
    TRY.
        l_reinr = lt_keys[ name = 'REINR' ]-value.
        l_pernr = lt_keys[ name = 'PERNR' ]-value.
      CATCH cx_root.
    ENDTRY.

    DATA(lt_filter) = io_tech_request_context->get_filter( )->get_filter_select_options( ).
    DATA(lr_app_id) = VALUE #( lt_filter[ property = 'ID' ]-select_options OPTIONAL ).
    IF lr_app_id IS NOT INITIAL.
      lv_app_id = lr_app_id[ 1 ]-low.

*      CASE lv_app_id.
*        when 'REQ'.
*          APPEND VALUE #( sign = 'E' option = 'EQ' low = 'REP' )
*             TO lr_app_id.
*          APPEND VALUE #( sign = 'E' option = 'EQ' low = 'APP' )
*             TO lr_app_id.
*        when 'APP'.
*          APPEND VALUE #( sign = 'E' option = 'EQ' low = 'REP' )
*             TO lr_app_id.
*          APPEND VALUE #( sign = 'E' option = 'EQ' low = 'REQ' )
*             TO lr_app_id.
*      ENDCASE.
    ENDIF.

    SELECT SINGLE *
             FROM zhrt_ui_trip
             INTO ls_trip
            WHERE reinr = l_reinr AND pernr = l_pernr.

    get_appr_route( EXPORTING
                      im_author =  ls_trip-author
                      iv_pernr = ls_trip-pernr
                      im_type = ls_trip-trip_goal
                      iv_past_trip = ls_trip-past_trip
                     CHANGING
                      ch_tab = lt_route ).
*{ Иванов А.А. 7700161044 Актуализация маршрута согласования
    get_appr_route_all( EXPORTING
                      im_author =  ls_trip-author
                      iv_pernr = ls_trip-pernr
                      im_type = ls_trip-trip_goal
                      iv_past_trip = ls_trip-past_trip
                     CHANGING
                      ch_tab = lt_route_all ).
*} Иванов А.А. 7700161044 Актуализация маршрута согласования
    DATA(l_uname_lin) = VALUE #( lt_route[ nep_boss = abap_true ]-uname OPTIONAL ).
    l_uname_lin = COND #( WHEN l_uname_lin IS INITIAL THEN abap_true ELSE l_uname_lin ).
    DATA(l_uname_ssp) = VALUE #( lt_route[ ssp_boss = abap_true ]-uname OPTIONAL ).
    l_uname_ssp = COND #( WHEN l_uname_ssp IS INITIAL THEN abap_true ELSE l_uname_ssp ).
    DATA(l_uname_top) = VALUE #( lt_route[ top = abap_true ]-uname OPTIONAL ).
    l_uname_top = COND #( WHEN l_uname_top IS INITIAL THEN abap_true ELSE l_uname_top ).
    DATA(l_uname_dd) = VALUE #( lt_route[ dd = abap_true ]-uname OPTIONAL ).
    l_uname_dd = COND #( WHEN l_uname_dd IS INITIAL THEN abap_true ELSE l_uname_dd ).
    DATA(l_uname_vp) = VALUE #( lt_route[ vp = abap_true ]-uname OPTIONAL ).
    l_uname_vp = COND #( WHEN l_uname_vp IS INITIAL THEN abap_true ELSE l_uname_vp ).
    DATA(l_uname_ra) = VALUE #( lt_route[ ra = abap_true ]-uname OPTIONAL ).
    l_uname_ra = COND #( WHEN l_uname_ra IS INITIAL THEN abap_true ELSE l_uname_ra ).
    DATA(l_uname_gid) = VALUE #( lt_route[ gid = abap_true ]-uname OPTIONAL ).
    l_uname_gid = COND #( WHEN l_uname_gid IS INITIAL THEN abap_true ELSE l_uname_gid ).
    DATA(l_uname_zam) = VALUE #( lt_route[ zam = abap_true ]-uname OPTIONAL ).
    l_uname_zam = COND #( WHEN l_uname_zam IS INITIAL THEN abap_true ELSE l_uname_zam ).
* Записи объекта изменений
    get_history( EXPORTING
                    iv_pernr = l_pernr
                    iv_reinr = l_reinr
                    iv_app_id = lv_app_id
                  CHANGING
                    ct_trip = lt_trip ).

    READ TABLE lt_trip TRANSPORTING NO FIELDS WITH KEY operation = '007'.
    IF sy-subrc = 0.
      DELETE lt_trip INDEX sy-tabix - 1.
    ENDIF.

**    CALL FUNCTION 'CHANGEDOCUMENT_READ'
**      EXPORTING
**        objectclass = lc_obj_class
**        objectid    = CONV cdobjectv( l_pernr && l_reinr ) "l_obj_id
**      TABLES
**        editpos     = lt_history
**      EXCEPTIONS
**        OTHERS      = 1.
***    SORT lt_history BY udate DESCENDING utime DESCENDING.
**
***    DELETE lt_history WHERE chngind = 'I'.
***    APPEND ls_trip TO lt_trip.
**
**    DATA lv_skip TYPE abap_bool.
**
**    LOOP AT lt_history ASSIGNING FIELD-SYMBOL(<ls_history>) GROUP BY ( key1 = <ls_history>-changenr ).
***                                                                       key1 = <ls_history>-udate
***                                                                       key2 = <ls_history>-utime ).
**      lv_skip = abap_true.
**      LOOP AT GROUP <ls_history> ASSIGNING FIELD-SYMBOL(<ls_member>).
***        IF lv_app_id = 'RES'.
**          IF <ls_member>-fname = 'APP_ID'.
**            CHECK <ls_member>-f_new in lr_app_id. " = lv_app_id.
**            lv_skip = abap_false.
**          ENDIF.
***        ELSE.
***          lv_skip = abap_false.
***        ENDIF.
**        ASSIGN COMPONENT <ls_member>-fname OF STRUCTURE ls_trip TO FIELD-SYMBOL(<lv_new>).
**        IF sy-subrc = 0.
**          <lv_new> = <ls_member>-f_new.
**
****          if <ls_member>-fname = 'APP_ID'.
****            ls_trip-app_id = <ls_member>-f_old 'RES'.
****          endif.
**        ENDIF.
**      ENDLOOP.
**      IF lv_skip = abap_false.
**        APPEND ls_trip TO lt_trip.
**      ENDIF.
**    ENDLOOP.
**    SORT lt_trip BY rdate ASCENDING rtime ASCENDING.
*    DELETE ADJACENT DUPLICATES FROM lt_trip COMPARING rdate rtime.

    DEFINE m_add_virtual_set.
      READ TABLE lt_status ASSIGNING <ls_status_virt>
        WITH KEY status_1 = &1
                 status_2 = &2.
      IF sy-subrc = 0 AND <ls_status_virt> IS ASSIGNED.
        APPEND INITIAL LINE TO et_entityset ASSIGNING <entity>.
        <entity>-udate = |{ &3-rdate+6(2) }.{ &3-rdate+4(2) }.{ &3-rdate+0(4) }|.
        <entity>-utime = |{ &3-rtime+0(2) }:{ &3-rtime+2(2) }:{ &3-rtime+4(2) }|.
        <entity>-commentary = &3-commentary.
*        <entity>-status_text = |{ <entity>-status_text }.{ &2 }|.
        <entity>-status_text = |{ <ls_status_virt>-status_text_1 }.{ <ls_status_virt>-status_text_2 }|.
*        <entity>-status = &5.
        <entity>-role = &5.
*   { ins NaumovSM 11.03.2021 7700148647
*        IF &3-deleg IS NOT INITIAL AND
        IF &6 IS NOT INITIAL AND
           <ls_status_virt>-status_text_2 <> 'На согласовании' AND
           <ls_status_virt>-status_text_2 <> 'На утверждении'.
*          <entity>-deleg = &3-deleg.
          <entity>-deleg = &6.
        ELSE.
          CLEAR <entity>-deleg.
        ENDIF.
*   } ins NaumovSM 11.03.2021 7700148647
        <entity>-username = &4.
      ENDIF.
    END-OF-DEFINITION.

    DEFINE m_add_set.
      APPEND INITIAL LINE TO et_entityset ASSIGNING <entity>.
      IF &1-rdate IS NOT INITIAL.
        <entity>-udate = |{ &1-rdate+6(2) }.{ &1-rdate+4(2) }.{ &1-rdate+0(4) }|.
        <entity>-utime = |{ &1-rtime+0(2) }:{ &1-rtime+2(2) }:{ &1-rtime+4(2) }|.
      ENDIF.
      <entity>-commentary = &1-commentary.

*        CASE &1-status_1.
*          WHEN 1.
*            <entity>-status_text = 'Заявка на командировку'.
*          WHEN 2.
*            <entity>-status_text = 'Изменение командировки'.
*          WHEN 3.
*            <entity>-status_text = 'Отмена командировки'.
*          WHEN 4.
*            <entity>-status_text = 'Отчет о командировке'.
*          WHEN 5.
*            <entity>-status_text = 'Авансовый отчет'.
*          WHEN 6.
*            <entity>-status_text = 'Бронирование'.
*          WHEN OTHERS.
*        ENDCASE.
*        IF &1-app_id IS NOT INITIAL.
*          CASE &1-reserv_st.
*            WHEN '1'.
*              <entity>-status_text = 'Заявка на бронирование открыта'.
*            WHEN '2'.
*              <entity>-status_text = 'Заявка на бронирование взята в работу'.
*            WHEN '3'.
*              <entity>-status_text = 'Заявка на бронирование на корректировке'.
*              <entity>-commentary = &1-comment_rs.
*            WHEN '4'.
*              <entity>-status_text = 'Заявка на бронирование на подтверждении'.
*            WHEN '5'.
*              <entity>-status_text = 'Бронирование подтверждено'.
*            WHEN '6'.
*              <entity>-status_text = 'Бронирование завершено'.
*            WHEN '7'.
*              <entity>-status_text = 'Отмена бронирования'.
*              <entity>-commentary = &1-comment_rs.
*            WHEN '8'.
*              <entity>-status_text = 'Бронирование отклонено'.
*              ENDCASE.
*          ENDIF.
* { ins NaumovSM 11.03.2021 7700148647
      IF &1-deleg IS NOT INITIAL AND
         NOT &2 CS 'Дораб' AND
         &2 <> 'На согласовании' AND
         &2 <> 'На утверждении'.
*        <entity>-deleg = &1-deleg.
        <entity>-deleg = &6.
      ELSE.
        CLEAR <entity>-deleg.
      ENDIF.   " ins NaumovSM 11.03.2021 7700148647
      IF <ls_status> IS ASSIGNED.
* путаница со статусами, в определении операции одни, итогом ставятся другие
* двойные и не явные условия заполнения
* попытка обойти условия по делегатам, не передавать на этапе выборки
        IF NOT <ls_status>-status_text_2 CS 'Дораб' AND
           <ls_status>-status_text_2 <> 'На согласовании' AND
           <ls_status>-status_text_2 <> 'На утверждении'.
*          <entity>-deleg = &1-deleg.
          <entity>-deleg = &6.
        ELSE.
          CLEAR <entity>-deleg.
        ENDIF.
      ENDIF.
* } ins NaumovSM 11.03.2021 7700148647

      <entity>-status_text = |{ <entity>-status_text }.{ &2 }|.
      IF &2 CS 'Дораб'.
        <entity>-status_text = |{ <ls_status>-status_text_1 }.{ &2 }|.
        CLEAR <entity>-commentary.
      ELSEIF &2 CS 'Утв'.
          <entity>-status_text = |{ <ls_status>-status_text_1 }.{ &2 }|.
      ELSE.
        IF <ls_status> IS ASSIGNED.
          <entity>-status_text = |{ <ls_status>-status_text_1 }.{ <ls_status>-status_text_2 }|.
        ENDIF.
      ENDIF.
      <entity>-status = &5.
      <entity>-username = &3.
      <entity>-role = &4.
    END-OF-DEFINITION.

    DEFINE m_add_set_witout_s.
      APPEND INITIAL LINE TO et_entityset ASSIGNING <entity>.
      IF &1-rdate IS NOT INITIAL.
        <entity>-udate = |{ &1-rdate+6(2) }.{ &1-rdate+4(2) }.{ &1-rdate+0(4) }|.
        <entity>-utime = |{ &1-rtime+0(2) }:{ &1-rtime+2(2) }:{ &1-rtime+4(2) }|.
      ENDIF.
      <entity>-status_text = &2.

      IF &3 IS NOT INITIAL.
*        <entity>-status_text = <entity>-status_text && 'Предыдущий согласующий:' && ` ` && &3 && ` ` && &4 && ` ` && &5.
*        <entity>-status_text = <entity>-status_text && ` ` && 'Новый согласующий:' && ` ` && &6.
        <entity>-prev_aprov = 'Предыдущий согласующий:' && ` ` && &3 && ` ` && &4 && ` ` && &5.
        <entity>-new_aprov = 'Новый согласующий:' && ` ` && &6.
      ENDIF.

    END-OF-DEFINITION.



    LOOP AT lt_trip ASSIGNING FIELD-SYMBOL(<trip>).
      IF <trip>-status_1 EQ '01' AND <trip>-status_2 EQ '01'.
        DATA(lv_init_block) = abap_true.
        READ TABLE lt_trip ASSIGNING FIELD-SYMBOL(<trip2>) INDEX sy-tabix + 1.
        CHECK sy-subrc EQ 0.
        IF <trip2>-status_2 EQ '01'.
          DELETE TABLE lt_trip FROM <trip>.
          CONTINUE.
        ELSE.
          EXIT.
        ENDIF.
      ENDIF.
    ENDLOOP.
    IF lv_init_block IS INITIAL.
      READ TABLE lt_trip INDEX 1 INTO DATA(ls_trip_1).
      ls_trip_1-status_2 = '01'.
      CLEAR: ls_trip_1-approver, ls_trip_1-prev_approver.
      ls_trip_1-operation = '001'.
      INSERT ls_trip_1 INTO lt_trip INDEX 1.
    ENDIF.

    DEFINE m_get_approver_role.
      CASE &1.
            WHEN l_uname_top.
              &2 = TEXT-top.
            WHEN l_uname_ssp.
              &2 = TEXT-ssp.
            WHEN l_uname_lin.
              &2 = TEXT-nep.
            WHEN l_uname_vp.
              &2 = TEXT-vp1.
            WHEN l_uname_dd.
              &2 = TEXT-dd1.
            WHEN l_uname_ra.
              &2 = TEXT-ra1.
            WHEN l_uname_zam.
              &2 = TEXT-zam.
            WHEN OTHERS.
              &2 = TEXT-ruk.
          ENDCASE.
    END-OF-DEFINITION.

    SELECT *
      FROM zhrt_ui_timln_ty
      INTO TABLE @DATA(lt_status).
    DATA: lv_status TYPE string,
          lv_uname  TYPE uname.
    LOOP AT lt_trip ASSIGNING <trip>.
      l_idx = sy-tabix.
      CLEAR: l_text, l_st.
      IF lv_app_id = 'RES'.
        READ TABLE lt_status ASSIGNING <ls_status>
              WITH KEY status_1 = '6'
              status_2 = <trip>-reserv_st.
        IF sy-subrc = 0.
*          l_text = 'Специалист по бронированию'.
          l_st = ''.
          IF <trip>-reserv_st EQ 5.
            l_text = 'Работник'.
            lv_uname = <trip>-aenam.
          ELSE.
            l_text = 'Специалист по бронированию'.
            lv_uname = <trip>-reserv_uname.
          ENDIF.
          m_add_set <trip> '' lv_uname l_text l_st ''.

        ENDIF.

      ELSE.
        READ TABLE lt_status ASSIGNING <ls_status>
                WITH KEY status_1 = <trip>-status_1
                status_2 = <trip>-status_2.


        CASE <trip>-status_2.
          WHEN '01'.
            IF <trip>-status_1 EQ '1' OR <trip>-status_1 EQ '2' OR <trip>-status_1 EQ '3'.
              m_add_set <trip> 'Создана' <trip>-author TEXT-rab c_01 ''.
            ELSE.
              m_add_set <trip> 'Создан' <trip>-author TEXT-rab c_01 ''.
            ENDIF.
            m_get_approver_role <trip>-approver l_text.
*            m_add_virtual_set '1' '3' <trip> <trip>-approver l_text.
          WHEN '02'.
            m_add_set <trip> 'Отозвана' <trip>-aenam TEXT-rab c_01 <trip>-deleg.
          WHEN '03'.
            m_get_approver_role <trip>-approver l_text.
            IF <trip>-status_1 = '05'.
              l_text = TEXT-rnu.
            ENDIF.
            IF <trip>-edu_appr_flag IS NOT INITIAL.
              DATA(lv_edu_appr) = abap_true.
*              l_text = 'Специалист по обучению'.
              IF <trip>-approver IS INITIAL.   " если есть аппрувер то
                READ TABLE lt_trip ASSIGNING <trip2> INDEX l_idx + 1.
                IF sy-subrc EQ 0.
                  CONTINUE.
                ENDIF.
                m_add_set <trip> 'В работе' <trip>-approver l_text l_st <trip>-deleg.
              ELSE.
                DATA(l_text_next) = l_text.
                l_text = 'Специалист по обучению'.
                CLEAR <trip>-deleg. " у специалиста по обучению нет делегатов ins NaumovSM

*                m_add_set <trip> 'Согласовано' <trip>-approver l_text l_st.   " del NaumovSM
*                m_add_set <trip> 'В работе' <trip>-approver l_text l_st.   " del NaumovSM
                m_add_set <trip> 'На согласовании' <trip>-approver l_text l_st ''.   " фактически текст тянется из <ls_status>-status_text_2 - На согласовании
                READ TABLE lt_trip ASSIGNING <trip2> INDEX l_idx + 1.
                IF sy-subrc EQ 0.
                  m_add_virtual_set <trip>-status_1 '5' <trip2> <trip>-approver l_text ''.   " del NaumovSM
*                  m_add_virtual_set <trip2>-status_1 '5' <trip2> <trip2>-approver l_text_next ''. " <trip2>-deleg.   " ins NaumovSM
                ENDIF.
              ENDIF.
              CONTINUE.
            ELSE.
*              m_add_set <trip> 'На согласовании' <trip>-approver l_text l_st ''.
*{ Иванов А.А. 7700161044 Актуализация маршрута согласования
              READ TABLE lt_route_all TRANSPORTING NO FIELDS WITH KEY uname = ls_trip_prew-approver.
              DATA(lv_start_tabix) = sy-tabix.
              READ TABLE lt_route_all INTO DATA(ls_route_all) WITH KEY uname = <trip>-approver.
              IF sy-subrc = 0.
                DATA(lv_cur_tabix) = sy-tabix.
                LOOP AT lt_route_all INTO ls_route_all FROM lv_start_tabix WHERE uname     IS INITIAL AND (
                                                                                 vacancy   IS NOT INITIAL OR
                                                                                 without_s IS NOT INITIAL ) .
                  DATA(lv_tabix_act) = sy-tabix. "Тихонов Г.Ю. 02.07.2021
                  IF sy-tabix < lv_cur_tabix.
                    DATA(lv_flag) = abap_false.
                  ELSE.
                    lv_flag = abap_true.
                    CONTINUE.
                  ENDIF.
*                  m_get_approver_role <trip>-approver l_txt_route.
                  CASE abap_true.
                    WHEN ls_route_all-ssp_boss.
                      l_txt_route = TEXT-vsp.
                    WHEN ls_route_all-nep_boss.
                      l_txt_route = TEXT-vne.
                    WHEN ls_route_all-top.
                      l_txt_route = TEXT-vto.
                    WHEN OTHERS.
                  ENDCASE.
                  CASE abap_true.
                    WHEN ls_route_all-vacancy.
                      IF ls_trip_prew-status_2 = '04'.
                        ls_trip_prew = <trip>.
                      ENDIF.
                      m_add_set ls_trip_prew 'На согласовании' '' l_txt_route l_st ''.

                      IF <trip>-prev_approver IS NOT INITIAL.
                        m_add_set_witout_s ls_trip_prew 'Произведена автоматическая замена согласующего руководителя на основании изменения орг. структуры' '' '' '' ''.
                        CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
                          EXPORTING
                            user_name               = CONV uname( <trip>-prev_approver )
                          IMPORTING
                            employeenumber          = l_pernr
                          EXCEPTIONS
                            no_employeenumber_found = 1
                            subtype_not_available   = 2
                            OTHERS                  = 3.

                        CHECK l_pernr IS NOT INITIAL.
                        m_read_inf l_pernr '0002' lt_p0002_ws .
                        READ TABLE lt_p0002_ws INDEX 1 INTO DATA(ls_p0002_ws).

                        CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
                          EXPORTING
                            user_name               = CONV uname( <trip>-approver )
                          IMPORTING
                            employeenumber          = l_pernr
                          EXCEPTIONS
                            no_employeenumber_found = 1
                            subtype_not_available   = 2
                            OTHERS                  = 3.

                       CHECK l_pernr IS NOT INITIAL.
                       m_read_inf l_pernr '0002' lt_p0002.
                       READ TABLE lt_p0002 INDEX 1 ASSIGNING FIELD-SYMBOL(<p0002>).
                       IF sy-subrc EQ 0.
                         DATA(lv_approver_fio) = |{ <p0002>-nachn } { <p0002>-vorna } { <p0002>-midnm }|.
                       ENDIF.

                       m_add_set_witout_s ls_trip_prew '' ls_p0002_ws-nachn ls_p0002_ws-vorna ls_p0002_ws-midnm lv_approver_fio.
                       CLEAR: l_pernr, lv_approver_fio, ls_p0002_ws.

                      ENDIF.

                      READ TABLE lt_route_all WITH KEY without_s = abap_true TRANSPORTING NO FIELDS.
                      IF sy-subrc <> 0.
                        m_add_set <trip> 'На согласовании' <trip>-approver l_text l_st ''.
                      ENDIF.

                    WHEN ls_route_all-without_s.
                      m_add_set_witout_s ls_trip_prew 'Произведена автоматическая замена согласующего руководителя на основании изменения орг. структуры' '' '' '' ''.
                      m_read_inf ls_route_all-pernr '0002' lt_p0002_ws .
                      READ TABLE lt_p0002_ws INDEX 1 INTO ls_p0002_ws.
*{ Тихонов Г.Ю. 02.07.2021
                      CLEAR l_pernr.
                      READ TABLE lt_route_all ASSIGNING FIELD-SYMBOL(<last_route_all>) INDEX lv_tabix_act + 1.
                      IF sy-subrc EQ 0.
                        IF <last_route_all>-vacancy IS NOT INITIAL OR <last_route_all>-without_s IS NOT INITIAL.
                          l_pernr = <last_route_all>-pernr.
                          DATA(lv_replace_apr) = abap_true.
                          IF <last_route_all>-vacancy IS NOT INITIAL.
                            CASE abap_true.
                              WHEN <last_route_all>-ssp_boss.
                                l_txt_route = TEXT-vsp.
                              WHEN <last_route_all>-nep_boss.
                                l_txt_route = TEXT-vne.
                              WHEN <last_route_all>-top.
                                l_txt_route = TEXT-vto.
                              WHEN OTHERS.
                            ENDCASE.
                          ELSE.
                            CASE abap_true.
                              WHEN <last_route_all>-top.
                                l_txt_route = TEXT-top.
                              WHEN <last_route_all>-ssp_boss.
                                l_txt_route = TEXT-ssp.
                              WHEN <last_route_all>-nep_boss.
                                l_txt_route = TEXT-nep.
                            ENDCASE.
                          ENDIF.
                        ENDIF.
                      ENDIF.
                      IF l_pernr IS INITIAL.
*} Тихонов Г.Ю. 02.07.2021
                        CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
                          EXPORTING
                            user_name               = CONV uname( <trip>-approver )
                          IMPORTING
                            employeenumber          = l_pernr
                          EXCEPTIONS
                            no_employeenumber_found = 1
                            subtype_not_available   = 2
                            OTHERS                  = 3.
                      ENDIF. "Тихонов Г.Ю. 02.07.2021
                      CHECK l_pernr IS NOT INITIAL.
                      m_read_inf l_pernr '0002' lt_p0002.
                      READ TABLE lt_p0002 INDEX 1 ASSIGNING <p0002>.
                      IF sy-subrc EQ 0.
                        lv_approver_fio = |{ <p0002>-nachn } { <p0002>-vorna } { <p0002>-midnm }|.
                      ENDIF.
*{ Тихонов Г.Ю. 02.07.2021
*                      m_add_set_witout_s ls_trip_prew '' ls_p0002_ws-nachn ls_p0002_ws-vorna ls_p0002_ws-nach2 lv_approver_fio.
*                      m_add_set <trip> 'На согласовании' <trip>-approver l_text l_st ''.
                      m_add_set_witout_s ls_trip_prew '' ls_p0002_ws-nachn ls_p0002_ws-vorna ls_p0002_ws-midnm lv_approver_fio.
                      IF lv_replace_apr IS NOT INITIAL.
                        CLEAR lv_replace_apr.
                        DATA: lv_uname_pernr TYPE uname.
                        lv_uname_pernr = 'XXXX' && l_pernr.
                        m_add_set <trip> 'На согласовании' lv_uname_pernr l_txt_route l_st ''.
                      ELSE.
                        m_add_set <trip> 'На согласовании' <trip>-approver l_text l_st ''.
                      ENDIF.
*} Тихонов Г.Ю. 02.07.2021
                    WHEN OTHERS.
                  ENDCASE.
*                  DELETE lt_route_all.
                ENDLOOP.
                IF sy-subrc <> 0 OR lv_flag = abap_true .
                  m_add_set <trip> 'На согласовании' <trip>-approver l_text l_st ''.
                ENDIF.
              ELSE.
                IF <trip>-prev_approver IS NOT INITIAL.
                  m_add_set_witout_s ls_trip_prew 'Произведена автоматическая замена согласующего руководителя на основании изменения орг. структуры' '' '' '' ''.
                  CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
                    EXPORTING
                      user_name               = CONV uname( <trip>-prev_approver )
                    IMPORTING
                      employeenumber          = l_pernr
                    EXCEPTIONS
                      no_employeenumber_found = 1
                      subtype_not_available   = 2
                      OTHERS                  = 3.

                  CHECK l_pernr IS NOT INITIAL.
                  m_read_inf l_pernr '0002' lt_p0002_ws .
                  READ TABLE lt_p0002_ws INDEX 1 INTO ls_p0002_ws.

                  CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
                    EXPORTING
                      user_name               = CONV uname( <trip>-approver )
                    IMPORTING
                      employeenumber          = l_pernr
                    EXCEPTIONS
                      no_employeenumber_found = 1
                      subtype_not_available   = 2
                      OTHERS                  = 3.

                 CHECK l_pernr IS NOT INITIAL.
                 m_read_inf l_pernr '0002' lt_p0002.
                 READ TABLE lt_p0002 INDEX 1 ASSIGNING <p0002>.
                 IF sy-subrc EQ 0.
                   lv_approver_fio = |{ <p0002>-nachn } { <p0002>-vorna } { <p0002>-midnm }|.
                 ENDIF.

                 m_add_set_witout_s ls_trip_prew '' ls_p0002_ws-nachn ls_p0002_ws-vorna ls_p0002_ws-midnm lv_approver_fio.
                 CLEAR: l_pernr, lv_approver_fio, ls_p0002_ws.

                ENDIF.
                m_add_set <trip> 'На согласовании' <trip>-approver l_text l_st ''.
              ENDIF.
*} Иванов А.А. 7700161044 Актуализация маршрута согласования
            ENDIF.
            READ TABLE lt_trip ASSIGNING <trip2> INDEX l_idx + 1.
            IF sy-subrc EQ 0.
              IF <trip2>-status_2 EQ '03' AND <trip2>-approver NE <trip>-approver." was NE  <trip2>-status_2 EQ '05' OR (  ).
*                m_add_virtual_set <trip>-status_1 '5' <trip2> <trip>-approver l_text.  " del NaumovSM
                m_add_virtual_set <trip>-status_1 '5' <trip2> <trip>-approver l_text <trip2>-deleg.   " ins NaumovSM
              ENDIF.
            ENDIF.

          WHEN '04'.
            m_get_approver_role <trip>-aenam l_text.
            m_add_set <trip> 'Отклонена' <trip>-aenam l_text l_st <trip>-deleg.
            READ TABLE lt_trip ASSIGNING <trip2> INDEX l_idx + 1.
            IF sy-subrc EQ 0.
              IF <trip2>-status_2 EQ '01'.
                m_add_set <trip> 'Доработка' <trip>-author TEXT-rab c_07 ''.
              ELSEIF <trip2>-status_2 EQ '03'.
                m_add_set <trip2> 'Доработал(а) заявку' <trip>-author TEXT-rab c_08 ''.
              ENDIF.
            ELSE.
              m_add_set <trip> 'Доработка' <trip>-author TEXT-rab c_07 ''.
            ENDIF.
          WHEN '05'.
            m_get_approver_role <trip>-aenam l_text.
            m_add_set <trip> 'Согласовано' <trip>-aenam l_text l_st <trip>-deleg.
            m_get_approver_role <trip>-approver l_text.
*            m_add_virtual_set <trip>-status_1 '7' <trip> <trip>-approver l_text ."<trip>-approver l_text l_st.  " del NaumovSM
            m_add_virtual_set <trip>-status_1 '7' <trip> <trip>-approver l_text <trip>-deleg."<trip>-approver l_text l_st.   " ins NaumovSM
          WHEN '08'.
            m_get_approver_role <trip>-aenam l_text.
            IF <trip>-status_1 EQ '1' OR <trip>-status_1 EQ '2' OR <trip>-status_1 EQ '3'.
              m_add_set <trip> 'Утверждена' <trip>-aenam l_text l_st <trip>-deleg.
            ELSE.
              m_add_set <trip> 'Утвержден' <trip>-aenam l_text l_st <trip>-deleg.
            ENDIF.
          WHEN '10'.

            DATA: lt_cd_history TYPE TABLE OF cdred,
                  lv_user_fio   TYPE uname.
*            CONSTANTS: lc_obj_class TYPE cdobjectcl VALUE 'ZHR_FIO_TRIP'.
            CALL FUNCTION 'CHANGEDOCUMENT_READ'
              EXPORTING
                objectclass = lc_obj_class
                objectid    = CONV cdobjectv( ls_trip-pernr && ls_trip-reinr )
              TABLES
                editpos     = lt_cd_history
              EXCEPTIONS
                OTHERS      = 1.
            SORT lt_cd_history BY udate DESCENDING utime DESCENDING.
            LOOP AT lt_cd_history ASSIGNING FIELD-SYMBOL(<ls_cd_history>) WHERE f_old IS NOT INITIAL.
              IF <ls_cd_history>-fname = 'APPROVER'.
                lv_user_fio = <ls_cd_history>-f_old.
                EXIT.
              ENDIF.
            ENDLOOP.



            m_get_approver_role lv_user_fio l_text.  "m_get_approver_role <trip>-aenam l_text.
            m_add_set <trip> 'Утверждена' lv_user_fio l_text l_st <trip>-deleg.  " m_add_set <trip> 'Утверждена' <trip>-aenam l_text l_st <trip>-deleg.
*            m_add_virtual_set <trip>-status_1 '10' <trip> '' ''.
          WHEN OTHERS.
        ENDCASE.
      ENDIF.
*{ Иванов А.А. 7700161044 Актуализация маршрута согласования
      ls_trip_prew = <trip>.
*} Иванов А.А. 7700161044 Актуализация маршрута согласования
    ENDLOOP.

    LOOP AT et_entityset ASSIGNING <entity>.
      <entity>-id = sy-tabix.
      CLEAR: l_pernr.
      IF <entity>-username IS NOT INITIAL.
*{ Тихонов Г.Ю. 02.07.2021
        IF  <entity>-username+0(4) = 'XXXX'.
          l_pernr = <entity>-username+4(8).
        ELSE.
*} Тихонов Г.Ю. 02.07.2021
          CALL FUNCTION 'CRIF_GET_EMPLOYEE_FOR_USER'
            EXPORTING
              user_name               = CONV uname( <entity>-username )
            IMPORTING
              employeenumber          = l_pernr
            EXCEPTIONS
              no_employeenumber_found = 1
              subtype_not_available   = 2
              OTHERS                  = 3.
        ENDIF. " Тихонов Г.Ю. 02.07.2021
      ENDIF.
      CHECK l_pernr IS NOT INITIAL.
      m_read_inf l_pernr '0002' lt_p0002.
      READ TABLE lt_p0002 INDEX 1 ASSIGNING <p0002>.
      IF sy-subrc EQ 0.
        <entity>-fio = |{ <p0002>-nachn } { <p0002>-vorna } { <p0002>-midnm }|.
      ELSE.   " ins NaumovSM
        <entity>-fio = <entity>-username.    " ins NaumovSM
      ENDIF.

      <entity>-fio_d = zcl_zhr_fio_util=>get_uname_fio( im_uname = <entity>-deleg im_inits_fl = 'X' ).   " ins NaumovSM 10.03.2021 7700148647

    ENDLOOP.
    DELETE ADJACENT DUPLICATES FROM et_entityset COMPARING status_text username.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TIMELINETYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TIMELINETYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD timelinetypeset_get_entityset.
    DATA: lt_values_tab TYPE TABLE OF dd07v,
          ls_entity     type zcl_zhr_fi_tv_req_mpc=>ts_timelinetype.

    CLEAR lt_values_tab[].

    CALL FUNCTION 'DD_DOMVALUES_GET'
      EXPORTING
        domname        = 'ZDHR_TRIP_OPERATION_TYPE'
        text           = 'X'
*       LANGU          = ' '
*       BYPASS_BUFFER  = ' '
* IMPORTING
*       RC             =
      TABLES
        dd07v_tab      = lt_values_tab
      EXCEPTIONS
        wrong_textflag = 1
        OTHERS         = 2.
    IF sy-subrc <> 0.
* Implement suitable error handling here
    ENDIF.

  loop at lt_values_tab ASSIGNING field-symbol(<val>).
    CLEAR ls_entity.
    ls_entity-code = <val>-domvalue_l.
    ls_entity-name = <val>-ddtext.
    APPEND ls_entity to et_entityset.
  endloop.

**TRY.
*CALL METHOD SUPER->TIMELINETYPESET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  IMPORTING
**    et_entityset             =
**    es_response_context      =
*    .
** CATCH /iwbep/cx_mgw_busi_exception .
** CATCH /iwbep/cx_mgw_tech_exception .
**ENDTRY.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TRANSFERSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TRANSFER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD transferset_get_entityset.
    APPEND INITIAL LINE TO et_entityset ASSIGNING FIELD-SYMBOL(<ent>).
    <ent>-transferid = '01'.
    <ent>-name = 'Такси'.
    UNASSIGN <ent>.
    APPEND INITIAL LINE TO et_entityset ASSIGNING <ent>.
    <ent>-transferid = '02'.
    <ent>-name = 'Автобус'.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TRANSFROMSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TRANSFROM
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method transfromset_get_entityset.
  data(lt_keys) = io_tech_request_context->get_source_keys( ).
  try.
      data(l_reinr) = lt_keys[ name = 'REINR' ]-value.
      data(l_number) = lt_keys[ name = 'ITINERARYNUMBER' ]-value.
    catch cx_root.
  endtry.

  select  ftpt_request~reinr as reinr,
          ftpt_request~itinerary_number as itinerarynumber,
          ftpt_request~request as request,
          ftpt_request~date_beg as date_beg,
          ftpt_request~location_beg as cityfrom,
          ftpt_request~location_end as cityto,
          ftpt_request~request_type as request_type,
          ftpt_request~price as price,

          zhrt_ui_request~class_air,
          zhrt_ui_request~airline,
          zhrt_ui_request~flightnumber,
          zhrt_ui_request~baggage,
          zhrt_ui_request~transfer,
          zhrt_ui_request~transfer_cost,
          zhrt_ui_request~paytype,
          zhrt_ui_request~type_class

  into corresponding fields of table @et_entityset
  from ftpt_request
    left join zhrt_ui_request on zhrt_ui_request~reinr = ftpt_request~reinr
      and zhrt_ui_request~request = ftpt_request~request
  where ftpt_request~reinr = @l_reinr
    and ftpt_request~itinerary_number = @l_number
    and ftpt_request~plan_request = 'R'
    and zhrt_ui_request~direction <> 'X'
    and ftpt_request~request_type in ('RF','RT', 'CE', 'O')
    and ftpt_request~reinr <> '0000000000'
  order by request descending.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TRANSHOTELSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TRANSHOTEL
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD transhotelset_get_entityset.
  DATA ls_entity TYPE zcl_zhr_fi_tv_req_mpc=>ts_transhotel.
  DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
  TRY.
      DATA(l_reinr) = lt_keys[ name = 'REINR' ]-value.
      DATA(l_number) = lt_keys[ name = 'ITINERARYNUMBER' ]-value.
    CATCH cx_root.
  ENDTRY.

  SELECT  ftpt_request~reinr AS reinr,
          ftpt_request~itinerary_number AS itinerarynumber,
          ftpt_request~request AS request,
          ftpt_request~date_beg AS date_beg,
          ftpt_request~time_beg AS time_beg,
          ftpt_request~date_end AS date_end,
          ftpt_request~time_end AS time_end,
          ftpt_request~location_end AS cityto,
          ftpt_request~price AS price,
          ftpt_request~comment1," as hoteloption,
*          zhrt_ui_request~class_hotel,
          zhrt_ui_request~class_room,
*          zhrt_ui_request~hotel_option,
          zhrt_ui_request~classhotel,
*          zhrt_ui_request~hoteloption,
          zhrt_ui_request~paytype,
          zhrt_ui_request~hotel
  INTO TABLE @DATA(itab)    "corresponding fields of table     "@et_entityset
  FROM ftpt_request
    LEFT JOIN zhrt_ui_request ON zhrt_ui_request~reinr = ftpt_request~reinr
      AND zhrt_ui_request~request = ftpt_request~request
  WHERE ftpt_request~reinr = @l_reinr
    AND ftpt_request~itinerary_number = @l_number
    AND ftpt_request~plan_request = 'R'
    AND ftpt_request~request_type IN (' H', 'H')
    AND ftpt_request~reinr <> '0000000000'.


  LOOP AT itab ASSIGNING FIELD-SYMBOL(<itab>).
    ls_entity-reinr = <itab>-reinr.
    ls_entity-itinerarynumber = <itab>-itinerarynumber.
    ls_entity-request = <itab>-request.
    ls_entity-paytype = <itab>-paytype.
    CONVERT DATE <itab>-date_beg TIME <itab>-time_beg
            INTO TIME STAMP ls_entity-date_time_beg TIME ZONE sy-zonlo.
    CONVERT DATE <itab>-date_end TIME <itab>-time_end
            INTO TIME STAMP ls_entity-date_time_end TIME ZONE sy-zonlo.
    ls_entity-cityto = <itab>-cityto.
    ls_entity-price = <itab>-price.
    ls_entity-classhotel = <itab>-classhotel.
    ls_entity-class_room = <itab>-class_room.
    ls_entity-hoteloption = <itab>-comment1."<itab>-hoteloption.
    ls_entity-hotel = <itab>-hotel.
    APPEND ls_entity TO et_entityset.
*    convert date <et_entityset>-date_beg time <et_entityset>-time_beg
*      into time stamp <et_entityset>-date_time_beg time zone 'UTC'.
*    convert date <et_entityset>-date_end time <et_entityset>-time_end
*      into time stamp <et_entityset>-date_time_end time zone 'UTC'.
  ENDLOOP.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TRANSTOSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TRANSTO
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method transtoset_get_entityset.
  data(lt_keys) = io_tech_request_context->get_source_keys( ).
  data ls_entity type zcl_zhr_fi_tv_req_mpc=>ts_transto.
  try.
      data(l_reinr) = lt_keys[ name = 'REINR' ]-value.
      data(l_number) = lt_keys[ name = 'ITINERARYNUMBER' ]-value.
    catch cx_root.
  endtry.

  select  ftpt_request~reinr as reinr,
          ftpt_request~itinerary_number as itinerarynumber,
          ftpt_request~request as request,
          ftpt_request~date_beg as date_beg,
          ftpt_request~location_beg as cityfrom,
          ftpt_request~location_end as cityto,
          ftpt_request~request_type as request_type,
          ftpt_request~price as price,

          zhrt_ui_request~class_air,
          zhrt_ui_request~airline,
          zhrt_ui_request~flightnumber,
          zhrt_ui_request~baggage,
          zhrt_ui_request~transfer,
          zhrt_ui_request~transfer_cost,
          zhrt_ui_request~class_rail,
          zhrt_ui_request~paytype,
          zhrt_ui_request~type_class


  from ftpt_request
  left join zhrt_ui_request on zhrt_ui_request~reinr = ftpt_request~reinr
    and zhrt_ui_request~request = ftpt_request~request

  where ftpt_request~reinr = @l_reinr
    and ftpt_request~itinerary_number = @l_number
    and ftpt_request~plan_request = 'R'
*    and ftpt_request~request_type in ('OT','OF')
    and zhrt_ui_request~direction = 'X'
    and ftpt_request~reinr <> '0000000000'
    into  table @data(itab). "et_entityset.
  loop at itab assigning field-symbol(<itab>).
    ls_entity-reinr = <itab>-reinr.
    ls_entity-itinerarynumber = <itab>-itinerarynumber.
    ls_entity-request = <itab>-request.
    ls_entity-date_beg  = <itab>-date_beg.
    ls_entity-cityfrom  = <itab>-cityfrom.
    ls_entity-cityto  = <itab>-cityto.
    ls_entity-request_type  = <itab>-request_type.
    ls_entity-price  = <itab>-price.

    ls_entity-airline = <itab>-airline.
    ls_entity-flightnumber = <itab>-flightnumber.
    ls_entity-baggage = <itab>-baggage.
    ls_entity-transfer = <itab>-transfer.
    ls_entity-transfer_cost = <itab>-transfer_cost.
    ls_entity-paytype = <itab>-paytype.
    ls_entity-type_class = <itab>-type_class.
    append ls_entity to et_entityset.

  endloop.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TRANSTYPESET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TRANSTYPE
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  method transtypeset_get_entityset.
    select distinct type_id as id,
      type_id_name as name,
      ordr
      from zthr_tr_trantype
      into corresponding fields of table @et_entityset
      where is_filter = @abap_true
      order by ordr.
**try.
*CALL METHOD SUPER->TRANSTYPESET_GET_ENTITYSET
*  EXPORTING
*    IV_ENTITY_NAME           =
*    IV_ENTITY_SET_NAME       =
*    IV_SOURCE_NAME           =
*    IT_FILTER_SELECT_OPTIONS =
*    IS_PAGING                =
*    IT_KEY_TAB               =
*    IT_NAVIGATION_PATH       =
*    IT_ORDER                 =
*    IV_FILTER_STRING         =
*    IV_SEARCH_STRING         =
**    io_tech_request_context  =
**  importing
**    et_entityset             =
**    es_response_context      =
*    .
** catch /iwbep/cx_mgw_busi_exception .
** catch /iwbep/cx_mgw_tech_exception .
**endtry.
  endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TRIPGOALSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TRIPGOALS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method TRIPGOALSSET_GET_ENTITYSET.
  SELECT  zhrt_sdescr_t~code as code,
          zhrt_sdescr_t~sdescr as name,
          zhrt_sdescr~goal_type as goaltype
  INTO CORRESPONDING FIELDS OF TABLE @et_entityset
  FROM  zhrt_sdescr
    LEFT JOIN zhrt_sdescr_t ON zhrt_sdescr~code = zhrt_sdescr_t~code.
endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->TRIPSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_TRIP
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
METHOD tripset_get_entityset.
  DATA(lt_keys) = io_tech_request_context->get_source_keys( ).
  DATA: lv_anzta TYPE anzta,
        l_region TYPE t706v-rgion.
  TRY.
      DATA(l_reinr) = lt_keys[ name = 'REINR' ]-value.
      DATA(l_pernr) = lt_keys[ name = 'PERNR' ]-value.
    CATCH cx_root.
  ENDTRY.
  SELECT * FROM t706v
          WHERE morei = '33'
            AND kzpah = 'P'
            AND kztkt = ''
*            AND anzta = '999'
            AND begda <= @sy-datum
            AND endda >= @sy-datum
           INTO TABLE @DATA(lt_daily).
  SELECT SINGLE date_beg,
                date_end
    FROM ftpt_request
    INTO @DATA(dates)
   WHERE ftpt_request~reinr = @l_reinr
     AND ftpt_request~pernr = @l_pernr.

  IF dates-date_beg = dates-date_end.
    lv_anzta = '001'.
  ELSE.
    lv_anzta = '999'.
  ENDIF.

  SELECT bezei, land1, bland
    FROM t7ruregiont
    INTO TABLE @DATA(lt_t7ruregiont).

  SELECT DISTINCT ftpt_request~reinr AS reinr,
          ftpt_request~location_end AS cityto,
          ftpt_request~region AS region,
          ftpt_request~request AS request,
          ftpt_request~pernr AS pernr,
          ftpt_request~itinerary_number AS itinerarynumber,
          ftpt_request~country_beg AS country_beg,
          ftpt_request~country_end AS country_end,
          ftpt_request~date_beg AS date_beg,
          ftpt_request~date_end AS date_end,
          ftpt_request~zzorg AS zzorg,
          zhrt_ui_request~betfa,
          zhrt_ui_request~waers,
          zhrt_ui_request~transfer
    INTO CORRESPONDING FIELDS OF TABLE @et_entityset
    FROM ftpt_request
    LEFT JOIN zhrt_ui_request ON zhrt_ui_request~reinr = ftpt_request~reinr
      AND zhrt_ui_request~pernr = ftpt_request~pernr
      AND zhrt_ui_request~request = ftpt_request~request
    WHERE ftpt_request~reinr = @l_reinr
      AND ftpt_request~pernr = @l_pernr
      AND ftpt_request~plan_request = 'R'
      AND ftpt_request~request_type = ''
      AND ftpt_request~reinr <> '0000000000'
    ORDER BY ftpt_request~itinerary_number.


  IF lines( et_entityset ) EQ 1.
    IF dates-date_beg = dates-date_end.
      lv_anzta = '001'.
    ELSE.
      lv_anzta = '999'.
    ENDIF.
  ELSE.
    lv_anzta = '999'.
  ENDIF.


  LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<entity>).
    <entity>-region_name = VALUE #( lt_t7ruregiont[ land1 = <entity>-country_end bland = <entity>-region ]-bezei OPTIONAL ).
    CASE <entity>-cityto.
      WHEN 'Москва г'.
        l_region = 'MSK'.
      WHEN 'Санкт-Петербург г'.
        l_region = 'SPB'.
      WHEN OTHERS.
        CLEAR l_region.
    ENDCASE.
    IF <entity>-country_end EQ 'RU'.
      <entity>-betfa = VALUE #( lt_daily[ lndgr = 'RU' anzta = lv_anzta waers = <entity>-waers rgion = l_region ]-betfa OPTIONAL ).
    ELSE.
      <entity>-betfa = VALUE #( lt_daily[ lndgr = 'ABR' anzta = lv_anzta ]-betfa OPTIONAL ).
    ENDIF.
  ENDLOOP.
ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->USERSET_GET_ENTITY
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IO_REQUEST_OBJECT              TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITY(optional)
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [<---] ER_ENTITY                      TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TS_USER
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_ENTITY_CNTXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
method userset_get_entity.
  data: lv_pernr      type persno,
        lt_p0002      type table of p0002,
        ls_p0002      type p0002,
        lr_nomer      type range of pa0290-nomer,
        lr_subty      type range of pa0290-subty,
        lr_endda      type range of pa0290-endda,
        lv_department type ref to zhr_objbif_hier,
        _bipernr      type ref to zhr_objbif_pernr,
        _biplans      type ref to zhr_objbif_plans,
        _biorgeh      type ref to zhr_objbif_orgeh,
        lt_user_info type pernr_us_tab.
*        _orgpath      type zhr_objbif_objec_orgpath_t.

  call function 'HR_GET_EMPLOYEES_FROM_USER'
      exporting
        user   = sy-uname
*       IV_WITH_AUTHORITY       = 'X'
      tables
        ee_tab = lt_user_info.

        lv_pernr         = lt_user_info[ 1 ]-pernr.

  lv_pernr = value #( it_key_tab[ name = 'Pernr' ]-value optional ).
  data(lv_subty) = value #( it_key_tab[ name = 'Subty' ]-value optional ).
  data(lv_nomer) = value #( it_key_tab[ name = 'Nomer' ]-value optional ).


  call function 'ZHR_EBDS_OBJBIF_GET'
    exporting
      otype  = c_otype_p
      objid  = lv_pernr
      datum  = sy-datum
    changing
      result = _bipernr
    exceptions
      others = 1.
  if _bipernr is not initial.
*    er_entity-ename = _bipernr->get_name( adatum = sy-datum anoauth = abap_true ).
    try.
        _bipernr->get_orgass(
          exporting
            adatum = sy-datum "l_date
          importing
            resplans = _biplans
            resorgeh = _biorgeh
      ).
*         Наименование должности
        if _biplans is not initial.
*                  er_entity-stell = _biplans->objec-objid.
          data(lv_plnam) = _biplans->get_name( adatum = sy-datum anoauth = abap_true ).
*          translate lv_plnam+0(1) to upper case.
        endif.
        if _biorgeh is not initial.
          data(lv_orgna) = _biorgeh->get_name( adatum = sy-datum anoauth = abap_true ).
          data: _orgpath  type zhr_objbif_objec_orgpath_t,
                it_attrib type table of pt1222.
          _biorgeh->get_orgpath(
                     exporting
                       aworigin = 'X'
*                             aminlevel = 3
                       adatum = sy-datum
                     importing
                       result = _orgpath[]
                     ).
          sort _orgpath by pobid descending.
        endif.
    endtry.
  endif.
  er_entity-position = LV_PLNAM.
  er_entity-department = LV_ORGNA.
*  lv_department->get_orgpath(
*                     EXPORTING
*                       aworigin = 'X'
*                       aminlevel = 0
*                       adatum = sy-datum
*                     IMPORTING
*                       result = _orgpath[]
*                     ).

  if lv_nomer is not initial.
    lr_nomer = value #( ( sign = 'I' option = 'EQ' low = lv_nomer ) ).
  endif.

  if lv_subty is not initial.
    lr_subty = value #( ( sign = 'I' option = 'EQ' low = lv_subty ) ).
  endif.

  if lv_subty = '21'.
    lr_endda = value #( ( sign = 'I' option = 'GE' low = sy-datum ) ).
  endif.



  define m_read_inf.
    REFRESH: &3.
    CALL FUNCTION 'HR_READ_INFOTYPE_AUTHC_DISABLE'.
    CALL FUNCTION 'HR_READ_INFOTYPE'
      EXPORTING
        pernr           = CONV persno( &1 )
        infty           = &2
        begda           = sy-datum
        endda           = sy-datum
      TABLES
        infty_tab       = &3
      EXCEPTIONS
        infty_not_found = 1
        invalid_input   = 2
        OTHERS          = 3.
  end-of-definition.

* get pernr
*  if lv_pernr is initial.
*    call function 'CRIF_GET_EMPLOYEE_FOR_USER'
*      exporting
*        user_name      = sy-uname
*      importing
*        employeenumber = lv_pernr
*      exceptions
*        others         = 1.
*    if sy-subrc <> 0.
*      raise exception type /iwbep/cx_mgw_busi_exception
*        exporting
*          textid = value #( msgid = 'ZHR_UI5'
*                            msgno = 001
*                            attr1 = sy-uname ).
*    endif.
*  endif.

* get phone number
  select single adr2~tel_number as phone
  from usr21 left join adr2 on adr2~persnumber = usr21~persnumber and adr2~addrnumber = usr21~addrnumber
  where usr21~bname = @sy-uname into corresponding fields of @er_entity.

* get position
  select single hrp1000~stext as position
  from pa0001 left join hrp1000 on pa0001~plans = hrp1000~objid and hrp1000~otype = 'S'
  where pa0001~pernr = @lv_pernr into corresponding fields of @er_entity.

* get passport
  select single pa0290~seria as seria,
    pa0290~seri0 as seri0,
    pa0290~nomer as nomer,
    pa0290~passl as passl,
    pa0290~datbg as datbg,
    pa0290~pcode as pcode,
    pa0290~subty as subty,
    pa0290~daten as ExpireDate
  from pa0290 where pa0290~pernr = @lv_pernr
    and pa0290~subty in @lr_subty
    and pa0290~nomer in @lr_nomer
    and pa0290~endda in @lr_endda
  into corresponding fields of @er_entity.

* get fio
  m_read_inf lv_pernr '0002' lt_p0002.
  if lt_p0002[] is not initial.
    ls_p0002 = corresponding #( lt_p0002[ 1 ] ).
    er_entity-fio = |{ ls_p0002-nachn } { ls_p0002-vorna } { ls_p0002-midnm }|.
  endif.

  if er_entity-nomer is initial.
    er_entity-nomer = lv_nomer.
  endif.

  if er_entity-subty is initial.
    er_entity-subty = lv_subty.
  endif.

  er_entity-pernr = lv_pernr.
  er_entity-uname = sy-uname.

endmethod.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Protected Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->WAERSSET_GET_ENTITYSET
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_ENTITY_NAME                 TYPE        STRING
* | [--->] IV_ENTITY_SET_NAME             TYPE        STRING
* | [--->] IV_SOURCE_NAME                 TYPE        STRING
* | [--->] IT_FILTER_SELECT_OPTIONS       TYPE        /IWBEP/T_MGW_SELECT_OPTION
* | [--->] IS_PAGING                      TYPE        /IWBEP/S_MGW_PAGING
* | [--->] IT_KEY_TAB                     TYPE        /IWBEP/T_MGW_NAME_VALUE_PAIR
* | [--->] IT_NAVIGATION_PATH             TYPE        /IWBEP/T_MGW_NAVIGATION_PATH
* | [--->] IT_ORDER                       TYPE        /IWBEP/T_MGW_SORTING_ORDER
* | [--->] IV_FILTER_STRING               TYPE        STRING
* | [--->] IV_SEARCH_STRING               TYPE        STRING
* | [--->] IO_TECH_REQUEST_CONTEXT        TYPE REF TO /IWBEP/IF_MGW_REQ_ENTITYSET(optional)
* | [<---] ET_ENTITYSET                   TYPE        ZCL_ZHR_FI_TV_REQ_MPC=>TT_WAERS
* | [<---] ES_RESPONSE_CONTEXT            TYPE        /IWBEP/IF_MGW_APPL_SRV_RUNTIME=>TY_S_MGW_RESPONSE_CONTEXT
* | [!CX!] /IWBEP/CX_MGW_BUSI_EXCEPTION
* | [!CX!] /IWBEP/CX_MGW_TECH_EXCEPTION
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD waersset_get_entityset.
    DATA lt_waers TYPE zcl_zhr_fi_tv_req_mpc=>tt_waers.
    SELECT waers,
           ltext AS ktext
      FROM tcurt
     WHERE spras = @sy-langu
      INTO CORRESPONDING FIELDS OF TABLE @et_entityset.
    SORT et_entityset BY waers.
    LOOP AT et_entityset ASSIGNING FIELD-SYMBOL(<waers>) WHERE waers = 'RUB' OR waers = 'USD' OR waers = 'EUR'.
      APPEND <waers> TO lt_waers.
      DELETE TABLE et_entityset FROM <waers>.
    ENDLOOP.
    APPEND LINES OF et_entityset TO lt_waers.
    CLEAR et_entityset[].
    APPEND LINES OF lt_waers TO et_entityset.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->WRITE_CHANGE_ATTRIBUTES
* +-------------------------------------------------------------------------------------------------+
* | [--->] IV_REQUEST                     TYPE        ZHR_UI_FI_TV_REQUEST
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD write_change_attributes.
    DATA: lt_log     TYPE TABLE OF zhrt_trip_chlog,
          ls_log     TYPE zhrt_trip_chlog,
          ls_entity  TYPE zhr_ui_fi_tv_request,
          lv_subty   TYPE subty VALUE '21',
          lt_request TYPE TABLE OF zhr_ui_trip_check_change_s,
          lv_num_tr  TYPE i,
          lv_num_pr  TYPE i.
    DEFINE m_add_line_log.
      ls_log-fieldname = &1.
      ls_log-blockname = &2.
      ls_log-old_value = &3.
      ls_log-new_value = &4.
      APPEND ls_log TO lt_log.
    end-OF-DEFINITION.
* Получаем старое состояние заявки
    DATA(lv_pernr) = iv_request-pernr.
    get_entity_requestset(
        EXPORTING
          iv_reinr = iv_request-reinr
          iv_user = sy-uname
          iv_appid = ''
        CHANGING
          cs_entity = ls_entity
          cv_pernr = lv_pernr
          cv_subty = lv_subty ).
* Заполняем общую часть для всех изменений
    ls_log-pernr = iv_request-pernr.
    ls_log-reinr = iv_request-reinr.
    ls_log-aenam = sy-uname.
    ls_log-rdate = sy-datum.
    ls_log-rtime = sy-uzeit.

* Основные данные (шапка)
    IF ls_entity-datebegin NE iv_request-datebegin. "Дата начала командировки
      m_add_line_log 'DATEBEGIN' 'OSN' ls_entity-mobile_phone iv_request-mobile_phone.
    ENDIF.
    IF ls_entity-dateend NE iv_request-dateend. "Дата окончания командировки
      m_add_line_log 'DATEEND' 'OSN' ls_entity-dateend iv_request-dateend.
    ENDIF.
    IF ls_entity-trip_goal NE iv_request-trip_goal. "Цель командировки
      m_add_line_log 'TRIP_GOAL' 'OSN' ls_entity-trip_goal iv_request-trip_goal.
    ENDIF.
    IF ls_entity-reason_trip NE iv_request-reason_trip. "Обоснование для СЗ
      m_add_line_log 'REASON_TRIP' 'OSN' ls_entity-reason_trip iv_request-reason_trip.
    ENDIF.
    IF ls_entity-basic_trip NE iv_request-basic_trip. "Основание для приказа
      m_add_line_log 'BASIC_TRIP' 'OSN' ls_entity-basic_trip iv_request-basic_trip.
    ENDIF.
    IF ls_entity-pers_resp NE iv_request-pers_resp. "Под личную ответственность
      m_add_line_log 'PERS_RESP' 'OSN' ls_entity-pers_resp iv_request-pers_resp.
    ENDIF.
    IF ls_entity-adv_payment NE iv_request-adv_payment. "Нужен аванс
      m_add_line_log 'ADV_PAYMENT' 'OSN' ls_entity-adv_payment iv_request-adv_payment.
    ENDIF.
    IF ls_entity-reason_text NE iv_request-reason_text. "Формулировки цели командировки
      m_add_line_log 'REASON_TEXT' 'OSN' ls_entity-reason_text iv_request-reason_text.
    ENDIF.
    IF ls_entity-mobile_phone NE iv_request-mobile_phone. "Мобильный телефон
      m_add_line_log 'MOBILE_PHONE' 'OSN' ls_entity-mobile_phone iv_request-mobile_phone.
    ENDIF.
    IF ls_entity-directive_comment NE iv_request-directive_comment. "Директивы ГД комментарий
      m_add_line_log 'DIRECTIVE_COMMENT' 'OSN' ls_entity-directive_comment iv_request-directive_comment.
    ENDIF.
    IF ls_entity-night_work NE iv_request-night_work. "Планируется работа в ночное время
      m_add_line_log 'NIGHT_WORK' 'OSN' ls_entity-night_work iv_request-night_work.
    ENDIF.
    IF ls_entity-overtime_work NE iv_request-overtime_work. "Планируется сверхурочная работа
      m_add_line_log 'OVERTIME_WORK' 'OSN' ls_entity-overtime_work iv_request-overtime_work.
    ENDIF.
    IF ls_entity-subty NE iv_request-subty. "Тип паспорта
      m_add_line_log 'SUBTY' 'OSN' ls_entity-subty iv_request-subty.
    ENDIF.
* Места командирования, транспорты, проживание
    SELECT DISTINCT ftpt_request~reinr,
                    ftpt_request~pernr,
                    ftpt_request~request_type,
                    ftpt_request~itinerary_number,
                    ftpt_request~request,
                    ftpt_request~region,
                    ftpt_request~location_beg,
                    ftpt_request~location_end,
                    ftpt_request~country_beg,
                    ftpt_request~country_end,
                    ftpt_request~date_beg,
                    ftpt_request~date_end,
                    ftpt_request~time_beg,
                    ftpt_request~time_end,
                    ftpt_request~zzorg,
                    ftpt_request~price,
                    zhrt_ui_request~paytype,
                    zhrt_ui_request~airline,
                    zhrt_ui_request~type_class,
                    zhrt_ui_request~flightnumber,
                    zhrt_ui_request~baggage,
                    zhrt_ui_request~transfer,
                    zhrt_ui_request~transfer_cost,
                    zhrt_ui_request~class_room,
                    zhrt_ui_request~hotel,
                    zhrt_ui_request~hoteloption
      INTO TABLE @lt_request
      FROM ftpt_request
      LEFT JOIN zhrt_ui_request ON zhrt_ui_request~reinr = ftpt_request~reinr
       AND zhrt_ui_request~pernr = ftpt_request~pernr
       AND zhrt_ui_request~request = ftpt_request~request
     WHERE ftpt_request~reinr = @iv_request-reinr
       AND ftpt_request~pernr = @lv_pernr
       AND ftpt_request~plan_request = 'R'
       AND ftpt_request~reinr <> '0000000000'
     ORDER BY ftpt_request~itinerary_number.


    LOOP AT iv_request-totrips ASSIGNING FIELD-SYMBOL(<tot>) GROUP BY <tot>-itinerarynumber.
      LOOP AT GROUP <tot> ASSIGNING FIELD-SYMBOL(<tot2>).
        READ TABLE lt_request ASSIGNING FIELD-SYMBOL(<req>) WITH KEY itinerary_number = <tot2>-itinerarynumber request = <tot2>-request.
        IF sy-subrc EQ 0.
*           Блок уже был, анализируем отличия от предыдущего
          CASE <tot2>-request_type.
            WHEN ''.
              DATA(lv_block) = |MK_{ <tot2>-itinerarynumber }|.
              check_change_requset_type_ini( EXPORTING
                                                iv_blockname = lv_block
                                                is_old = <req>
                                                is_new = <tot2>
                                              CHANGING
                                                ct_log = lt_log
                                                cs_log = ls_log ).
              lv_num_tr = 1.
              lv_num_pr = 1.
            WHEN 'OF' OR 'RF' OR 'CE' OR 'OT' OR 'RT'.
              IF <tot2>-request_type EQ 'OF' OR <tot2>-request_type EQ 'OT'.
                DATA(lv_ident) = 'TV'. "Транспорт В
              ELSEIF <tot2>-request_type EQ 'RF' OR <tot2>-request_type EQ 'RT'.
                lv_ident = 'TI'. "Транспорт ИЗ
              ELSEIF <tot2>-request_type EQ 'CE'.
                lv_ident = 'AT'. "Автотранспорт (не обозначается туда или обратно)
              ENDIF.
              lv_block = |MK_{ <tot2>-itinerarynumber }_{ lv_ident }_{ lv_num_tr }|.
              check_change_requset_type_othe( EXPORTING
                                                iv_blockname = lv_block
                                                is_old = <req>
                                                is_new = <tot2>
                                               CHANGING
                                                ct_log = lt_log
                                                cs_log = ls_log ).
              lv_num_tr = lv_num_tr + 1.
            WHEN 'H'.
              lv_block = |MK_{ <tot2>-itinerarynumber }_P_{ lv_num_pr }|.
              check_change_requset_type_h( EXPORTING
                                             iv_blockname = lv_block
                                             is_old = <req>
                                             is_new = <tot2>
                                            CHANGING
                                             ct_log = lt_log
                                             cs_log = ls_log ).
              lv_num_pr = lv_num_pr + 1.
            WHEN OTHERS.
          ENDCASE.
          DELETE TABLE lt_request FROM <req>.
        ELSE.
*           Добавили новый блок - пишем все поля блока, только значение 'Было' оставляем пустое
          CASE <tot2>-request_type.
            WHEN ''.
              lv_block = |MK_{ <tot2>-itinerarynumber }_ADD|.
              check_change_requset_type_ini( EXPORTING
                                                iv_blockname = lv_block
                                                is_old = CONV zhr_ui_trip_check_change_s( '' )
                                                is_new = <tot2>
                                              CHANGING
                                                ct_log = lt_log
                                                cs_log = ls_log ).
              lv_num_tr = 1.
              lv_num_pr = 1.
            WHEN 'OF' OR 'RF' OR 'CE' OR 'OT' OR 'RT'.
              IF <tot2>-request_type EQ 'OF' OR <tot2>-request_type EQ 'OT'.
                lv_ident = 'TV'. "Транспорт В
              ELSEIF <tot2>-request_type EQ 'RF' OR <tot2>-request_type EQ 'RT'.
                lv_ident = 'TI'. "Транспорт ИЗ
              ELSEIF <tot2>-request_type EQ 'CE'.
                lv_ident = 'AT'. "Автотранспорт (не обозначается туда или обратно)
              ENDIF.
              lv_block = |MK_{ <tot2>-itinerarynumber }_{ lv_ident }_{ lv_num_tr }_ADD|.
              check_change_requset_type_othe( EXPORTING
                                                iv_blockname = lv_block
                                                is_old = CONV zhr_ui_trip_check_change_s( '' )
                                                is_new = <tot2>
                                               CHANGING
                                                ct_log = lt_log
                                                cs_log = ls_log ).
              lv_num_tr = lv_num_tr + 1.
            WHEN 'H'.
              lv_block = |MK_{ <tot2>-itinerarynumber }_P_{ lv_num_pr }_ADD|.
              check_change_requset_type_h( EXPORTING
                                             iv_blockname = lv_block
                                             is_old = CONV zhr_ui_trip_check_change_s( '' )
                                             is_new = <tot2>
                                            CHANGING
                                             ct_log = lt_log
                                             cs_log = ls_log ).
              lv_num_pr = lv_num_pr + 1.
            WHEN OTHERS.
          ENDCASE.
        ENDIF.
      ENDLOOP.
    ENDLOOP.

* Если остались записи, значит на фронте эти записи уже удалили, о чем мы должны написать в лог
    LOOP AT lt_request ASSIGNING <req>.
      CASE <req>-request_type.
        WHEN ''.
          lv_block = |MK_{ <req>-itinerary_number }_DEL|.
          check_change_requset_type_ini( EXPORTING
                                            iv_blockname = lv_block
                                            is_old = <req>
                                            is_new = CONV zhr_iu_trip_s( '' )
                                          CHANGING
                                            ct_log = lt_log
                                            cs_log = ls_log ).
          lv_num_tr = 1.
          lv_num_pr = 1.
        WHEN 'OF' OR 'RF' OR 'CE' OR 'OT' OR 'RT'.
          IF <req>-request_type EQ 'OF' OR <req>-request_type EQ 'OT'.
            lv_ident = 'TV'. "Транспорт В
          ELSEIF <req>-request_type EQ 'RF' OR <req>-request_type EQ 'RT'.
            lv_ident = 'TI'. "Транспорт ИЗ
          ELSEIF <req>-request_type EQ 'CE'.
            lv_ident = 'AT'. "Автотранспорт (не обозначается туда или обратно)
          ENDIF.
          lv_block = |MK_{ <req>-itinerary_number }_{ lv_ident }_{ lv_num_tr }_DEL|.
          check_change_requset_type_othe( EXPORTING
                                            iv_blockname = lv_block
                                            is_old = <req>
                                            is_new = CONV zhr_iu_trip_s( '' )
                                           CHANGING
                                            ct_log = lt_log
                                            cs_log = ls_log ).
          lv_num_tr = lv_num_tr + 1.
        WHEN 'H'.
          lv_block = |MK_{ <req>-itinerary_number }_P_{ lv_num_pr }_DEL|.
          check_change_requset_type_h( EXPORTING
                                         iv_blockname = lv_block
                                         is_old = <req>
                                         is_new = CONV zhr_iu_trip_s( '' )
                                        CHANGING
                                         ct_log = lt_log
                                         cs_log = ls_log ).
          lv_num_pr = lv_num_pr + 1.
        WHEN OTHERS.
      ENDCASE.
    ENDLOOP.

    INSERT zhrt_trip_chlog FROM TABLE lt_log.
  ENDMETHOD.


* <SIGNATURE>---------------------------------------------------------------------------------------+
* | Instance Private Method ZCL_ZHR_FI_TV_REQ_DPC_EXT->WRITE_TEXT
* +-------------------------------------------------------------------------------------------------+
* | [<---] IV_TEXT_ID                     TYPE        THEAD-TDNAME
* | [<---] IV_TEXT                        TYPE        STRING
* +--------------------------------------------------------------------------------------</SIGNATURE>
  METHOD write_text.
    DATA: lv_thead TYPE thead,
          lt_text  TYPE TABLE OF pru_char255,
          it_lines TYPE tttext,
          lv_text  TYPE string.
    CALL FUNCTION 'INIT_TEXT'
      EXPORTING
        id       = 'ZTRI'
        language = sy-langu
        name     = iv_text_id
        object   = 'Z_FIO_TRI'
      IMPORTING
        header   = lv_thead
      TABLES
        lines    = it_lines[]
      EXCEPTIONS
        id       = 1
        language = 2
        name     = 3
        object   = 4
        OTHERS   = 5.
    lv_text = iv_text.
    CALL FUNCTION 'ZHR_SLPIT_STRING'
      EXPORTING
        string        = lv_text
        length        = 132
        use_separator = abap_true
      TABLES
        split         = lt_text.
    LOOP AT lt_text ASSIGNING FIELD-SYMBOL(<text_line>).
      APPEND VALUE #( tdline = <text_line>-char255 ) TO it_lines.
    ENDLOOP.
    CALL FUNCTION 'SAVE_TEXT'
      EXPORTING
        client          = sy-mandt
        header          = lv_thead
        savemode_direct = abap_true
      TABLES
        lines           = it_lines[]
      EXCEPTIONS
        id              = 1
        language        = 2
        name            = 3
        object          = 4
        OTHERS          = 5.
    CHECK sy-subrc = 0.
    CALL FUNCTION 'COMMIT_TEXT'.
  ENDMETHOD.
ENDCLASS.