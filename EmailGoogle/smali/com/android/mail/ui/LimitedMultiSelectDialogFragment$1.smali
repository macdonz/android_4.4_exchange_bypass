.class Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;
.super Ljava/lang/Object;
.source "LimitedMultiSelectDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

.field final synthetic val$adapter:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

.field final synthetic val$selectedValues:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;Ljava/util/Set;Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

    iput-object p2, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 98
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, entryValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    #v1=(Reference);
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    #v1=(Reference);
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->removeSelected(Ljava/lang/String;)V

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->this$0:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;

    invoke-virtual {v1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "selectedValues"

    #v2=(Reference);
    new-instance v3, Ljava/util/ArrayList;

    #v3=(UninitRef);
    iget-object v4, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #v3=(Reference);
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 113
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-virtual {v1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 114
    return-void

    .line 106
    :cond_0
    #v1=(Boolean);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$selectedValues:Ljava/util/Set;

    #v1=(Reference);
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$1;->val$adapter:Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->addSelected(Ljava/lang/String;)V

    goto :goto_0
.end method
