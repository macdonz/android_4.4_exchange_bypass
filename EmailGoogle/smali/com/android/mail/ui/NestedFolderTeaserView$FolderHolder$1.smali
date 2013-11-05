.class final Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder$1;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)I
    .locals 2
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v1

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/providers/Folder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    check-cast p1, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    .end local p1
    check-cast p2, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder$1;->compare(Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
