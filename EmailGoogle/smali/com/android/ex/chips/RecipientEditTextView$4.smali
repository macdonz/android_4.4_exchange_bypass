.class Lcom/android/ex/chips/RecipientEditTextView$4;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "rowId"
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
    .line 270
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #v1=(Reference);
    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #v2=(Reference);
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$400(Lcom/android/ex/chips/RecipientEditTextView;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/ex/chips/RecipientAlternatesAdapter;

    invoke-virtual {v1, p3}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/chips/RecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 273
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {}, Lcom/android/ex/chips/RecipientEditTextView;->access$600()I

    move-result v2

    #v2=(Integer);
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, delayed:Landroid/os/Message;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$300(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x12c

    #v2=(LongLo);v3=(LongHi);
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 276
    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$4;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/RecipientEditTextView;->clearComposingText()V

    .line 277
    return-void
.end method
