.class public Lcom/android/mail/browse/EmlTempFileDeletionService;
.super Landroid/app/IntentService;
.source "EmlTempFileDeletionService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "EmlTempFileDeletionService"

    #v0=(Reference);
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 31
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 35
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 39
    #v3=(Null);
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    #v0=(Reference);
    const-string v2, "android.intent.action.DELETE"

    #v2=(Reference);
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 42
    .local v1, uri:Landroid/net/Uri;
    #v1=(Reference);
    invoke-virtual {p0}, Lcom/android/mail/browse/EmlTempFileDeletionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    #v2=(Reference);
    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);
    return-void
.end method
