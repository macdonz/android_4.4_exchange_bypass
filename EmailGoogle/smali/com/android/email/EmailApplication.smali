.class public Lcom/android/email/EmailApplication;
.super Landroid/app/Application;
.source "EmailApplication.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "Email"

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/LogTag;->setLogTag(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/android/email/EmailApplication$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/EmailApplication$1;-><init>()V

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/preferences/PreferenceMigratorHolder;->setPreferenceMigratorCreator(Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;)V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    #p0=(Reference);
    return-void
.end method
