.class public Lcom/motorola/android/internal/policy/impl/DmIntent;
.super Ljava/lang/Object;
.source "DmIntent.java"


# static fields
.field public static final ACTION_CALL_AND_DATA_STATE_READY:Ljava/lang/String; = "com.motorola.android.dm.service.call_and_data_state_ready"

.field public static final ACTION_CLOSE_NOTIFICATION_INFO:Ljava/lang/String; = "com.motorola.android.dm.service.close_notification_info"

.field public static final ACTION_START_STATE_MONITORING_SERVICE:Ljava/lang/String; = "com.motorola.android.dm.service.data_and_call_state_monitoring_service"

.field public static final ACTION_TIMER_ALERT:Ljava/lang/String; = "com.motorola.android.dm.service.pending_notification"

.field public static final ACTION_USER_CONFIRMED_DM_SESSION:Ljava/lang/String; = "com.motorola.android.dm.service.user_confirmed_dm_session"

.field public static final CANCEL_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.cancel_alert_dlg"

.field public static final CMD_INJECT_PACKAGE_0:Ljava/lang/String; = "com.motorola.android.dm.service.InjectPackage0"

.field public static final DM_ALERT_DLG_CLOSED:Ljava/lang/String; = "com.motorola.dm.service.dm_alert_dlg_closed"

.field public static final DM_SERVICE_HANDLE_INTENT:Ljava/lang/String; = "com.motorola.android.dm.service.Handle"

.field public static final DM_SERVICE_RESULT_INTENT:Ljava/lang/String; = "com.motorola.android.dm.service.Result"

.field public static final FIELD_ALERTTYPE:Ljava/lang/String; = "AlertType"

.field public static final FIELD_ALERT_STR:Ljava/lang/String; = "AlertStr"

.field public static final FIELD_BOOTSTRAP_MSG:Ljava/lang/String; = "BootstrapMsg"

.field public static final FIELD_CORR:Ljava/lang/String; = "Correlator"

.field public static final FIELD_DMHANDLE:Ljava/lang/String; = "DmHandle"

.field public static final FIELD_DMRESULT:Ljava/lang/String; = "DmResult"

.field public static final FIELD_DM_UNITEST_RESULT:Ljava/lang/String; = "UnitestResult"

.field public static final FIELD_FILENAME:Ljava/lang/String; = "FileName"

.field public static final FIELD_FOTA_RESULT:Ljava/lang/String; = "fotaResult"

.field public static final FIELD_IS_BINARY:Ljava/lang/String; = "IsBinary"

.field public static final FIELD_LAWMO_RESULT:Ljava/lang/String; = "LawmoResult"

.field public static final FIELD_PKG0:Ljava/lang/String; = "Pkg0"

.field public static final FIELD_PKGURI:Ljava/lang/String; = "PkgURI"

.field public static final FIELD_REQUEST_ID:Ljava/lang/String; = "RequestID"

.field public static final FIELD_SCOMO_ALERT_MARK:Ljava/lang/String; = "ScomoAlertMark"

.field public static final FIELD_SCOMO_COMPONENT_UID:Ljava/lang/String; = "ScomoComponentUID"

.field public static final FIELD_SCOMO_TARGET_URI:Ljava/lang/String; = "ScomoTargetURI"

.field public static final FIELD_SERVERID:Ljava/lang/String; = "ServerID"

.field public static final FIELD_TIMER:Ljava/lang/String; = "Timer"

.field public static final FIELD_TYPE:Ljava/lang/String; = "Type"

.field public static final HIDE_PROGRESS_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.hide_progress_alert_dlg"

.field public static final LANUCH_INTENT:Ljava/lang/String; = "com.motorola.android.dm.service.Launch"

.field public static final SHOW_CONFIRM_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.confirm_alert_dlg"

.field public static final SHOW_DISPLAY_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.display_alert_dlg"

.field public static final SHOW_MULTICHOICE_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.multichoice_alert_dlg"

.field public static final SHOW_PKG0_ALERT_DLG:Ljava/lang/String; = "com.motorola.android.dm.service.pkg0_alert_dlg"

.field public static final SHOW_PKG0_ALERT_DLG_CLOSE:Ljava/lang/String; = "com.motorola.android.dm.service.pkg0_alert_dlg_close"

.field public static final SHOW_PKG0_INFO_DLG:Ljava/lang/String; = "com.motorola.android.dm.service.pkg0_info_dlg"

.field public static final SHOW_PROGRESS_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.show_progress_alert_dlg"

.field public static final SHOW_SINGLECHOICE_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.singlechoice_alert_dlg"

.field public static final SHOW_TEXTINPUT_ALERT_DLG:Ljava/lang/String; = "com.motorola.dm.service.textinput_alert_dlg"

.field public static final SHOW_UPDATE_CANCEL_DLG:Ljava/lang/String; = "com.motorola.android.dm.service.update_cancel_dlg"

.field public static final TYPE_BOOTSTRAP:I = 0x7

.field public static final TYPE_CANCEL_DM_SESSION:I = 0x4

.field public static final TYPE_CLIENT_SESSION_REQUEST:I = 0x6

.field public static final TYPE_DO_NOTHING:I = 0x64

.field public static final TYPE_FOTA_CLIENT_SESSION_REQUEST:I = 0x2

.field public static final TYPE_FOTA_NOTIFY_SERVER:I = 0x3

.field public static final TYPE_LAWMO_NOTIFY_SESSION:I = 0xf

.field public static final TYPE_PKG0_NOTIFICATION:I = 0x1

.field public static final TYPE_SCOMO_NOTIFY_SERVER:I = 0x10

.field public static final TYPE_UNITEST_DUMP_TREE:I = 0xc

.field public static final TYPE_UNITEST_EXEC_NODE:I = 0xe

.field public static final TYPE_UNITEST_GET_STRING_NODE:I = 0xb

.field public static final TYPE_UNITEST_PROCESS_SCRIPT:I = 0xd

.field public static final TYPE_UNITEST_SET_STRING_NODE:I = 0xa

.field public static final TYPE_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
