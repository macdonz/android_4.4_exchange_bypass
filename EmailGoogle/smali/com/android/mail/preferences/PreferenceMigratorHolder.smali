.class public Lcom/android/mail/preferences/PreferenceMigratorHolder;
.super Ljava/lang/Object;
.source "PreferenceMigratorHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;
    }
.end annotation


# static fields
.field private static sCreator:Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    #p0=(Reference);
    return-void
.end method

.method public static createPreferenceMigrator()Lcom/android/mail/preferences/BasePreferenceMigrator;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/mail/preferences/PreferenceMigratorHolder;->sCreator:Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;

    #v0=(Reference);
    invoke-interface {v0}, Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;->createPreferenceMigrator()Lcom/android/mail/preferences/BasePreferenceMigrator;

    move-result-object v0

    return-object v0
.end method

.method public static setPreferenceMigratorCreator(Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;)V
    .locals 0
    .parameter "creator"

    .prologue
    .line 30
    sput-object p0, Lcom/android/mail/preferences/PreferenceMigratorHolder;->sCreator:Lcom/android/mail/preferences/PreferenceMigratorHolder$PreferenceMigratorCreator;

    .line 31
    return-void
.end method
