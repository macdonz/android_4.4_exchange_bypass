.class Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
.super Ljava/lang/Object;
.source "FolderSelectorAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/FolderSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TreeNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;",
        ">;"
    }
.end annotation


# instance fields
.field public mAddedToList:Z

.field public final mChildren:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;",
            ">;"
        }
    .end annotation
.end field

.field public mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)V
    .locals 1
    .parameter "wrappedObject"

    .prologue
    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    #p0=(Reference);
    new-instance v0, Ljava/util/PriorityQueue;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mChildren:Ljava/util/PriorityQueue;

    .line 162
    const/4 v0, 0x0

    #v0=(Null);
    iput-boolean v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mAddedToList:Z

    .line 165
    iput-object p1, p0, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .line 166
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mChildren:Ljava/util/PriorityQueue;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public compareTo(Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;)I
    .locals 2
    .parameter "o"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v0=(Reference);
    iget-object v1, p1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mWrappedObject:Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;->compareTo(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->compareTo(Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method pollChild()Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;->mChildren:Ljava/util/PriorityQueue;

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/ui/FolderSelectorAdapter$TreeNode;

    return-object v0
.end method
