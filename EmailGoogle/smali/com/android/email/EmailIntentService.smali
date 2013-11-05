.class public Lcom/android/email/EmailIntentService;
.super Lcom/android/mail/MailIntentService;
.source "EmailIntentService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/email/EmailIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "EmailIntentService"

    #v0=(Reference);
    invoke-direct {p0, v0}, Lcom/android/mail/MailIntentService;-><init>(Ljava/lang/String;)V

    .line 32
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/android/mail/MailIntentService;->onHandleIntent(Landroid/content/Intent;)V

    .line 38
    sget-object v0, Lcom/android/email/EmailIntentService;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    const-string v1, "Handling intent %s"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 39
    return-void
.end method
