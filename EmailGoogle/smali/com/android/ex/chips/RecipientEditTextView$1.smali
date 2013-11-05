.class Lcom/android/ex/chips/RecipientEditTextView$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
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
    .line 219
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$1;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$1;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$1;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;

    #v1=(UninitRef);
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$1;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-direct {v1, v2, v3}, Lcom/android/ex/chips/RecipientEditTextView$RecipientTextWatcher;-><init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$1;)V

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$002(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/TextWatcher;)Landroid/text/TextWatcher;

    .line 224
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$1;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$1;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$000(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 226
    :cond_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-void
.end method
