.class public Lcom/android/exchange/Exchange;
.super Landroid/app/Application;
.source "Exchange.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "Exchange"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/LogTag;->setLogTag(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 33
    invoke-static {p0}, Lcom/android/emailcommon/provider/EmailContent;->init(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/exchange/Exchange;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    #v1=(Reference);
    const-string v2, "fix_parent_keys"

    #v2=(Reference);
    const-string v3, ""

    #v3=(Reference);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 36
    return-void
.end method
