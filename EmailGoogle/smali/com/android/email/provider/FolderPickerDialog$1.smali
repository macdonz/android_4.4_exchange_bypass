.class Lcom/android/email/provider/FolderPickerDialog$1;
.super Ljava/lang/Object;
.source "FolderPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/provider/FolderPickerDialog;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/FolderPickerDialog;


# direct methods
.method constructor <init>(Lcom/android/email/provider/FolderPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/email/provider/FolderPickerDialog$1;->this$0:Lcom/android/email/provider/FolderPickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerDialog$1;->this$0:Lcom/android/email/provider/FolderPickerDialog;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/email/provider/FolderPickerDialog;->access$000(Lcom/android/email/provider/FolderPickerDialog;)Lcom/android/mail/ui/SeparatedFolderListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/mail/ui/SeparatedFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, item:Ljava/lang/Object;
    #v0=(Reference);
    instance-of v1, v0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/android/email/provider/FolderPickerDialog$1;->this$0:Lcom/android/email/provider/FolderPickerDialog;

    #v1=(Reference);
    check-cast v0, Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;

    .end local v0           #item:Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/android/email/provider/FolderPickerDialog;->update(Lcom/android/mail/ui/FolderSelectorAdapter$FolderRow;)V

    .line 85
    :cond_0
    #v1=(Conflicted);
    return-void
.end method
