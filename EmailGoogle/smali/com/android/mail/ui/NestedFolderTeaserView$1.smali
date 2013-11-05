.class Lcom/android/mail/ui/NestedFolderTeaserView$1;
.super Ljava/lang/Object;
.source "NestedFolderTeaserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/NestedFolderTeaserView;->attachOnClickListener(Landroid/view/View;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

.field final synthetic val$holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/NestedFolderTeaserView;Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$1;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    iput-object p2, p0, Lcom/android/mail/ui/NestedFolderTeaserView$1;->val$holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mail/ui/NestedFolderTeaserView$1;->this$0:Lcom/android/mail/ui/NestedFolderTeaserView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/mail/ui/NestedFolderTeaserView;->access$000(Lcom/android/mail/ui/NestedFolderTeaserView;)Lcom/android/mail/ui/FolderSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/ui/NestedFolderTeaserView$1;->val$holder:Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/ui/NestedFolderTeaserView$FolderHolder;->getFolder()Lcom/android/mail/providers/Folder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mail/ui/FolderSelector;->onFolderSelected(Lcom/android/mail/providers/Folder;)V

    .line 242
    return-void
.end method
