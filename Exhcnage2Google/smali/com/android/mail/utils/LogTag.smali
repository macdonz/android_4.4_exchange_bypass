.class public Lcom/android/mail/utils/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field private static sLogTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "UnifiedEmail"

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/utils/LogTag;->sLogTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/mail/utils/LogTag;->sLogTag:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method public static setLogTag(Ljava/lang/String;)V
    .locals 0
    .parameter "logTag"

    .prologue
    .line 34
    sput-object p0, Lcom/android/mail/utils/LogTag;->sLogTag:Ljava/lang/String;

    .line 35
    return-void
.end method
