.class Lcom/android/ex/chips/RecipientEditTextView$6;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/BaseRecipientAdapter$EntriesUpdatedObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V
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
    .line 437
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/RecipientEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    if-lez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$6;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->access$700(Lcom/android/ex/chips/RecipientEditTextView;)V

    .line 445
    :cond_0
    #v0=(Conflicted);
    return-void
.end method
