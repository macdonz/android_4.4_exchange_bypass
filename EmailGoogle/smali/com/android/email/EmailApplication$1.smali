.class final Lcom/android/email/EmailApplication$1;
.super Ljava/lang/Object;
.source "EmailApplication.java"

# interfaces
.implements Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/EmailApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public createPreferenceMigrator()Lcom/android/mail/preferences/BasePreferenceMigrator;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/email/preferences/EmailPreferenceMigrator;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/preferences/EmailPreferenceMigrator;-><init>()V

    #v0=(Reference);
    return-object v0
.end method
