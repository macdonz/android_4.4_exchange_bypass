.class Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

.field final synthetic val$recipients:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2528
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public matchesFound(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2531
    .local p1, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2533
    .local v2, replacements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v3=(Conflicted);v5=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2534
    .local v3, temp:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    const/4 v0, 0x0

    .line 2535
    .local v0, entry:Lcom/android/ex/chips/RecipientEntry;
    #v0=(Null);
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    #v4=(Integer);
    const/4 v5, -0x1

    #v5=(Byte);
    if-eq v4, v5, :cond_0

    .line 2539
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    #v4=(Reference);
    iget-object v5, v4, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    #v5=(Reference);
    invoke-interface {v3}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ex/chips/RecipientEditTextView;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ex/chips/RecipientEntry;

    invoke-static {v5, v4}, Lcom/android/ex/chips/RecipientEditTextView;->access$2900(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 2543
    :cond_0
    #v0=(Reference);v4=(Conflicted);v5=(Conflicted);
    if-eqz v0, :cond_1

    .line 2544
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    #v4=(Reference);
    invoke-static {v4, v0}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3000(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2546
    :cond_1
    #v4=(Conflicted);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2549
    .end local v0           #entry:Lcom/android/ex/chips/RecipientEntry;
    .end local v3           #temp:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_2
    #v0=(Conflicted);v3=(Conflicted);v4=(Boolean);
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    #v5=(Reference);
    invoke-static {v4, v5, v2}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3100(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 2550
    return-void
.end method

.method public matchesNotFound(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, unfoundAddresses:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 2554
    #v5=(Null);
    new-instance v1, Ljava/util/ArrayList;

    #v1=(UninitRef);
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    #v3=(Integer);
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2557
    .local v1, replacements:Ljava/util/List;,"Ljava/util/List<Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;>;"
    #v1=(Reference);
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    #v3=(Reference);
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Reference);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2558
    .local v2, temp:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v3

    #v3=(LongLo);v4=(LongHi);
    invoke-static {v3, v4}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    #v3=(Integer);
    const/4 v4, -0x1

    #v4=(Byte);
    if-eq v3, v4, :cond_1

    .line 2561
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    .line 2563
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    #v3=(Reference);
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v4

    #v4=(Reference);
    invoke-static {v3, v4}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3000(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2565
    :cond_0
    #v3=(Boolean);v4=(Byte);
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2568
    :cond_1
    #v3=(Integer);v4=(Conflicted);
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2572
    .end local v2           #temp:Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_2
    #v2=(Conflicted);v3=(Boolean);
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;

    #v3=(Reference);
    iget-object v4, p0, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask$1;->val$recipients:Ljava/util/ArrayList;

    #v4=(Reference);
    invoke-static {v3, v4, v1}, Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;->access$3100(Lcom/android/ex/chips/RecipientEditTextView$RecipientReplacementTask;Ljava/util/List;Ljava/util/List;)V

    .line 2573
    return-void
.end method
