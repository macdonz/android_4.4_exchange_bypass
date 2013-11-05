.class public Lcom/android/mail/ui/AsyncRefreshTask;
.super Landroid/os/AsyncTask;
.source "AsyncRefreshTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRefreshUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "refreshUri"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 30
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/AsyncRefreshTask;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/mail/ui/AsyncRefreshTask;->mRefreshUri:Landroid/net/Uri;

    .line 32
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/AsyncRefreshTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "voids"

    .prologue
    const/4 v2, 0x0

    .line 36
    #v2=(Null);
    iget-object v0, p0, Lcom/android/mail/ui/AsyncRefreshTask;->mRefreshUri:Landroid/net/Uri;

    #v0=(Reference);
    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/mail/ui/AsyncRefreshTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/AsyncRefreshTask;->mRefreshUri:Landroid/net/Uri;

    #v1=(Reference);
    move-object v3, v2

    #v3=(Null);
    move-object v4, v2

    #v4=(Null);
    move-object v5, v2

    #v5=(Null);
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 39
    :cond_0
    #v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v2
.end method
