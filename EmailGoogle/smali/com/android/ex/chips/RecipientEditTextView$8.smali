.class Lcom/android/ex/chips/RecipientEditTextView$8;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->getSortedRecipients()[Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic val$spannable:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Landroid/text/Spannable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1753
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->val$spannable:Landroid/text/Spannable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I
    .locals 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 1757
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->val$spannable:Landroid/text/Spannable;

    #v2=(Reference);
    invoke-interface {v2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 1758
    .local v0, firstStart:I
    #v0=(Integer);
    iget-object v2, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->val$spannable:Landroid/text/Spannable;

    invoke-interface {v2, p2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 1759
    .local v1, secondStart:I
    #v1=(Integer);
    if-ge v0, v1, :cond_0

    .line 1760
    const/4 v2, -0x1

    .line 1764
    :goto_0
    #v2=(Byte);
    return v2

    .line 1761
    :cond_0
    #v2=(Reference);
    if-le v0, v1, :cond_1

    .line 1762
    const/4 v2, 0x1

    #v2=(One);
    goto :goto_0

    .line 1764
    :cond_1
    #v2=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1753
    check-cast p1, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .end local p1
    check-cast p2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/chips/RecipientEditTextView$8;->compare(Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;)I

    move-result v0

    #v0=(Integer);
    return v0
.end method
