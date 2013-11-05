.class Lcom/android/mail/ui/RecentFolderList$StoreRecent;
.super Landroid/os/AsyncTask;
.source "RecentFolderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/RecentFolderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreRecent"
.end annotation

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


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAccount:Lcom/android/mail/providers/Account;

.field private final mFolder:Lcom/android/mail/providers/Folder;

.field final synthetic this$0:Lcom/android/mail/ui/RecentFolderList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/android/mail/ui/RecentFolderList;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mail/ui/RecentFolderList;Lcom/android/mail/providers/Account;Lcom/android/mail/providers/Folder;)V
    .locals 1
    .parameter
    .parameter "account"
    .parameter "folder"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->this$0:Lcom/android/mail/ui/RecentFolderList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 105
    #p0=(Reference);
    sget-boolean v0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->$assertionsDisabled:Z

    #v0=(Boolean);
    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #v0=(Reference);
    throw v0

    .line 106
    :cond_1
    #v0=(Boolean);
    iput-object p2, p0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->mAccount:Lcom/android/mail/providers/Account;

    .line 107
    iput-object p3, p0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->mFolder:Lcom/android/mail/providers/Folder;

    .line 108
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v6, 0x0

    .line 112
    #v6=(Null);
    iget-object v2, p0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->mAccount:Lcom/android/mail/providers/Account;

    #v2=(Reference);
    iget-object v0, v2, Lcom/android/mail/providers/Account;->recentFolderListUri:Landroid/net/Uri;

    .line 113
    .local v0, uri:Landroid/net/Uri;
    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/utils/Utils;->isEmpty(Landroid/net/Uri;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 114
    new-instance v1, Landroid/content/ContentValues;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v1, values:Landroid/content/ContentValues;
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->mFolder:Lcom/android/mail/providers/Folder;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    iget-object v2, v2, Lcom/android/mail/utils/FolderUri;->fullUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    const-string v2, "RecentFolderList"

    const-string v3, "Save: %s"

    const/4 v4, 0x1

    #v4=(One);
    new-array v4, v4, [Ljava/lang/Object;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->mFolder:Lcom/android/mail/providers/Folder;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/mail/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    iget-object v2, p0, Lcom/android/mail/ui/RecentFolderList$StoreRecent;->this$0:Lcom/android/mail/ui/RecentFolderList;

    invoke-static {v2}, Lcom/android/mail/ui/RecentFolderList;->access$100(Lcom/android/mail/ui/RecentFolderList;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 121
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-object v6
.end method
