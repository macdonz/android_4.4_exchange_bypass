.class Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->matchesFound(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

.field final synthetic val$entry:Lcom/android/ex/chips/RecipientEntry;

.field final synthetic val$temp:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2670
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$temp:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$entry:Lcom/android/ex/chips/RecipientEntry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->this$2:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    iget-object v0, v0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$temp:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    #v1=(Reference);
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;->val$entry:Lcom/android/ex/chips/RecipientEntry;

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView;->replaceChip(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    .line 2674
    return-void
.end method
