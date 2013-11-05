.class public Lcom/android/mail/ui/FolderOperation;
.super Ljava/lang/Object;
.source "FolderOperation.java"


# static fields
.field public static final EMPTY:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAdd:Z

.field public mFolder:Lcom/android/mail/providers/Folder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/ui/FolderOperation;->EMPTY:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Lcom/android/mail/providers/Folder;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "folder"
    .parameter "operation"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    #p0=(Reference);
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #v0=(Boolean);
    iput-boolean v0, p0, Lcom/android/mail/ui/FolderOperation;->mAdd:Z

    .line 37
    iput-object p1, p0, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    .line 38
    return-void
.end method

.method public static isDestructive(Ljava/util/Collection;Lcom/android/mail/providers/Folder;)Z
    .locals 4
    .parameter
    .parameter "folder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/mail/ui/FolderOperation;",
            ">;",
            "Lcom/android/mail/providers/Folder;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, folderOps:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/mail/ui/FolderOperation;>;"
    const/4 v2, 0x1

    .line 70
    #v2=(One);
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    #v0=(Reference);v1=(Conflicted);v3=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Lcom/android/mail/ui/FolderOperation;

    .line 71
    .local v1, op:Lcom/android/mail/ui/FolderOperation;
    iget-object v3, v1, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    invoke-static {v3, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    iget-boolean v3, v1, Lcom/android/mail/ui/FolderOperation;->mAdd:Z

    if-nez v3, :cond_1

    .line 78
    .end local v1           #op:Lcom/android/mail/ui/FolderOperation;
    :goto_0
    #v1=(Conflicted);v2=(Boolean);
    return v2

    .line 74
    .restart local v1       #op:Lcom/android/mail/ui/FolderOperation;
    :cond_1
    #v1=(Reference);v2=(One);
    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->isTrash()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/mail/ui/FolderOperation;->mFolder:Lcom/android/mail/providers/Folder;

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/mail/providers/Folder;->isInbox()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    goto :goto_0

    .line 78
    .end local v1           #op:Lcom/android/mail/ui/FolderOperation;
    :cond_2
    #v1=(Conflicted);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method
