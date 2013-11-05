.class Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "LimitedMultiSelectDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/LimitedMultiSelectDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LimitedMultiSelectAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSelectedValues:I

.field private final mSelectedValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter
    .parameter "maxSelectedValues"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 164
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    .line 167
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntryValues:Ljava/util/List;

    .line 169
    invoke-static {p4}, Lcom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    .line 171
    iput p4, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mMaxSelectedValues:I

    .line 173
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntryValues:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "Each entry must have a corresponding value"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 176
    :cond_0
    #v0=(Integer);v1=(Integer);
    return-void
.end method


# virtual methods
.method public addSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "selectedValue"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 266
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 234
    iget v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mMaxSelectedValues:I

    #v0=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    #v1=(Reference);
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    #v1=(Integer);
    if-le v0, v1, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 238
    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntryValues:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    #v0=(Integer);
    int-to-long v0, v0

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 195
    const/4 v0, 0x0

    #v0=(Null);
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040063

    #v2=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 209
    .local v0, checkedTextView:Landroid/widget/CheckedTextView;
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    #v1=(Reference);
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->isEnabled(I)Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 212
    return-object v0

    .end local v0           #checkedTextView:Landroid/widget/CheckedTextView;
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    move-object v0, p2

    .line 206
    #v0=(Reference);
    check-cast v0, Landroid/widget/CheckedTextView;

    .restart local v0       #checkedTextView:Landroid/widget/CheckedTextView;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    #v0=(One);
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mEntries:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    #v0=(Boolean);
    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 244
    #v0=(One);
    iget v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mMaxSelectedValues:I

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    #v2=(Reference);
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    #v2=(Integer);
    if-le v1, v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    #v0=(Boolean);v2=(Conflicted);
    return v0

    .line 250
    :cond_1
    #v0=(One);v2=(Integer);
    iget-object v1, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    #v1=(Reference);
    invoke-virtual {p0, p1}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    #v2=(Reference);
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    #v1=(Boolean);
    if-nez v1, :cond_0

    .line 254
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public removeSelected(Ljava/lang/String;)V
    .locals 1
    .parameter "selectedValue"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 270
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 271
    return-void
.end method

.method public setSelected(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, selectedValues:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 259
    iget-object v0, p0, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->mSelectedValues:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 260
    invoke-virtual {p0}, Lcom/android/mail/ui/LimitedMultiSelectDialogFragment$LimitedMultiSelectAdapter;->notifyDataSetChanged()V

    .line 261
    return-void
.end method
