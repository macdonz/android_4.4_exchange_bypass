.class public Lcom/android/mail/ui/FolderDisplayer;
.super Ljava/lang/Object;
.source "FolderDisplayer.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected final mDefaultBgColor:I

.field protected final mDefaultFgColor:I

.field protected final mFoldersSortedSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mail/providers/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/mail/utils/LogTag;->getLogTag()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/FolderDisplayer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    #p0=(Reference);
    invoke-static {}, Lcom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    .line 47
    iput-object p1, p0, Lcom/android/mail/ui/FolderDisplayer;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/FolderDisplayer;->mDefaultFgColor:I

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/mail/ui/FolderDisplayer;->mDefaultBgColor:I

    .line 51
    return-void
.end method


# virtual methods
.method public loadConversationFolders(Lcom/android/mail/providers/Conversation;Lcom/android/mail/utils/FolderUri;I)V
    .locals 3
    .parameter "conv"
    .parameter "ignoreFolderUri"
    .parameter "ignoreFolderType"

    .prologue
    .line 62
    iget-object v2, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/SortedSet;->clear()V

    .line 63
    invoke-virtual {p1}, Lcom/android/mail/providers/Conversation;->getRawFolders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    #v2=(Boolean);
    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/providers/Folder;

    .line 65
    .local v0, folder:Lcom/android/mail/providers/Folder;
    if-ltz p3, :cond_1

    invoke-virtual {v0, p3}, Lcom/android/mail/providers/Folder;->isType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, v0, Lcom/android/mail/providers/Folder;->folderUri:Lcom/android/mail/utils/FolderUri;

    #v2=(Reference);
    invoke-virtual {p2, v2}, Lcom/android/mail/utils/FolderUri;->equals(Ljava/lang/Object;)Z

    move-result v2

    #v2=(Boolean);
    if-nez v2, :cond_0

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v2=(Reference);
    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0           #folder:Lcom/android/mail/providers/Folder;
    :cond_3
    #v0=(Conflicted);v2=(Boolean);
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/mail/ui/FolderDisplayer;->mFoldersSortedSet:Ljava/util/SortedSet;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 81
    return-void
.end method
