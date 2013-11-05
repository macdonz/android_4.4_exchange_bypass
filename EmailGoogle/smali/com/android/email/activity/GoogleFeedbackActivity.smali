.class public Lcom/android/email/activity/GoogleFeedbackActivity;
.super Landroid/app/Activity;
.source "GoogleFeedbackActivity.java"


# static fields
.field private static final BUG_REPORT_INTENT:Landroid/content/Intent;

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/email/activity/GoogleFeedbackActivity;->LOG_TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/content/Intent;

    #v0=(UninitRef);
    const-string v1, "android.intent.action.BUG_REPORT"

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/activity/GoogleFeedbackActivity;->BUG_REPORT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/email/activity/GoogleFeedbackActivity;->LOG_TAG:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method

.method private static launchGoogleFeedback(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "screenshot"

    .prologue
    .line 45
    new-instance v0, Lcom/android/email/activity/GoogleFeedbackActivity$1;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Lcom/android/email/activity/GoogleFeedbackActivity$1;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    .local v0, conn:Landroid/content/ServiceConnection;
    #v0=(Reference);
    sget-object v1, Lcom/android/email/activity/GoogleFeedbackActivity;->BUG_REPORT_INTENT:Landroid/content/Intent;

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 79
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/email/activity/GoogleFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, intent:Landroid/content/Intent;
    #v0=(Reference);
    const-string v2, "screen_shot"

    #v2=(Reference);
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Landroid/graphics/Bitmap;

    .line 39
    .local v1, screenshot:Landroid/graphics/Bitmap;
    invoke-static {p0, v1}, Lcom/android/email/activity/GoogleFeedbackActivity;->launchGoogleFeedback(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/email/activity/GoogleFeedbackActivity;->finish()V

    .line 41
    return-void
.end method
