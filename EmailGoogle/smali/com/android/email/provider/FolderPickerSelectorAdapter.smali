.class public Lcom/android/email/provider/FolderPickerSelectorAdapter;
.super Lcom/android/mail/ui/HierarchicalFolderSelectorAdapter;
.source "FolderPickerSelectorAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "folders"
    .parameter
    .parameter "layout"
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, initiallySelected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/android/mail/ui/HierarchicalFolderSelectorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;ILjava/lang/String;)V

    .line 34
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method protected meetsRequirements(Lcom/android/mail/providers/Folder;)Z
    .locals 1
    .parameter "folder"

    .prologue
    .line 43
    const/16 v0, 0x8

    #v0=(PosByte);
    invoke-virtual {p1, v0}, Lcom/android/mail/providers/Folder;->supportsCapability(I)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mail/providers/Folder;->isTrash()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method
