.class public Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;
.super Lcom/android/emailcommon/mail/MessagingException;
.source "AccountCheckSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoDiscoverResults"
.end annotation


# instance fields
.field public final mHostAuth:Lcom/android/emailcommon/provider/HostAuth;


# direct methods
.method public constructor <init>(ZLcom/android/emailcommon/provider/HostAuth;)V
    .locals 1
    .parameter "authenticationError"
    .parameter "hostAuth"

    .prologue
    .line 394
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 395
    #p0=(Reference);
    if-eqz p1, :cond_0

    .line 396
    const/16 v0, 0xb

    #v0=(PosByte);
    iput v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    .line 400
    :goto_0
    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$AutoDiscoverResults;->mHostAuth:Lcom/android/emailcommon/provider/HostAuth;

    .line 401
    return-void

    .line 398
    :cond_0
    #v0=(Null);
    const/16 v0, 0xc

    #v0=(PosByte);
    iput v0, p0, Lcom/android/emailcommon/mail/MessagingException;->mExceptionType:I

    goto :goto_0
.end method
