.class public abstract Lcom/android/emailcommon/service/EmailServiceStatus;
.super Ljava/lang/Object;
.source "EmailServiceStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    #p0=(Reference);
    return-void
.end method

.method public static syncMailboxStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;JII)V
    .locals 8
    .parameter "cr"
    .parameter "syncExtras"
    .parameter "mailboxId"
    .parameter "statusCode"
    .parameter "progress"

    .prologue
    .line 120
    const/4 v2, 0x0

    #v2=(Null);
    const/4 v7, 0x0

    #v7=(Null);
    move-object v0, p0

    #v0=(Reference);
    move-object v1, p1

    #v1=(Reference);
    move-wide v3, p2

    #v3=(LongLo);v4=(LongHi);
    move v5, p4

    #v5=(Integer);
    move v6, p5

    #v6=(Integer);
    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/service/EmailServiceStatus;->syncStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;IJIILcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;)V

    .line 121
    return-void
.end method

.method private static syncStatus(Landroid/content/ContentResolver;Landroid/os/Bundle;IJIILcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;)V
    .locals 6
    .parameter "cr"
    .parameter "syncExtras"
    .parameter "statusType"
    .parameter "id"
    .parameter "statusCode"
    .parameter "progress"
    .parameter "writer"

    .prologue
    .line 92
    const-string v4, "callback_uri"

    #v4=(Reference);
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, callbackUri:Ljava/lang/String;
    #v2=(Reference);
    const-string v4, "callback_method"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, callbackMethod:Ljava/lang/String;
    #v1=(Reference);
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 95
    const-string v4, "callback_arg"

    const-string v5, ""

    #v5=(Reference);
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, callbackArg:Ljava/lang/String;
    #v0=(Reference);
    new-instance v3, Landroid/os/Bundle;

    #v3=(UninitRef);
    const/4 v4, 0x4

    #v4=(PosByte);
    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 97
    .local v3, statusExtras:Landroid/os/Bundle;
    #v3=(Reference);
    const-string v4, "type"

    #v4=(Reference);
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v4, "id"

    invoke-virtual {v3, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 99
    const-string v4, "status_code"

    invoke-virtual {v3, v4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 100
    const-string v4, "progress"

    invoke-virtual {v3, v4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    if-eqz p7, :cond_0

    .line 102
    invoke-interface {p7, v3}, Lcom/android/emailcommon/service/EmailServiceStatus$StatusWriter;->addToStatus(Landroid/os/Bundle;)V

    .line 104
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v0, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 106
    .end local v0           #callbackArg:Ljava/lang/String;
    .end local v3           #statusExtras:Landroid/os/Bundle;
    :cond_1
    #v0=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    return-void
.end method
