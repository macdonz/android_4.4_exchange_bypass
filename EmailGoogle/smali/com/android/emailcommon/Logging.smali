.class public Lcom/android/emailcommon/Logging;
.super Ljava/lang/Object;
.source "Logging.java"


# static fields
.field public static final DEBUG_LIFECYCLE:Z

.field public static final DEBUG_SENSITIVE:Z

.field public static final LOGD:Z

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    #v1=(Null);
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/Logging;->LOG_TAG:Ljava/lang/String;

    .line 45
    sput-boolean v1, Lcom/android/emailcommon/Logging;->LOGD:Z

    .line 46
    sput-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_SENSITIVE:Z

    .line 47
    sput-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_LIFECYCLE:Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
