.class public Lcom/android/email/provider/AccountBackupRestore;
.super Ljava/lang/Object;
.source "AccountBackupRestore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method public static backup(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 48
    #v2=(Null);
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, resolver:Landroid/content/ContentResolver;
    #v0=(Reference);
    sget-object v1, Lcom/android/email/provider/EmailProvider;->ACCOUNT_BACKUP_URI:Landroid/net/Uri;

    #v1=(Reference);
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 50
    return-void
.end method