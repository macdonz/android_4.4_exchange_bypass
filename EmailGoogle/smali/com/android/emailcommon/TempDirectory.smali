.class public Lcom/android/emailcommon/TempDirectory;
.super Ljava/lang/Object;
.source "TempDirectory.java"


# static fields
.field private static sTempDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    #v0=(Null);
    sput-object v0, Lcom/android/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static getTempDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/android/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    #v0=(UninitRef);
    const-string v1, "TempDirectory not set.  If in a unit test, call Email.setTempDirectory(context) in setUp()."

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 40
    :cond_0
    #v1=(Uninit);
    sget-object v0, Lcom/android/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    return-object v0
.end method

.method public static setTempDirectory(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/emailcommon/TempDirectory;->sTempDirectory:Ljava/io/File;

    .line 32
    return-void
.end method
