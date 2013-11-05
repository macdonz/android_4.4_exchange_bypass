.class public Lcom/android/mail/browse/MergedAdapter;
.super Landroid/widget/BaseAdapter;
.source "MergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,
        Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 58
    #p0=(Reference);
    new-instance v0, Lcom/android/mail/browse/MergedAdapter$1;

    #v0=(UninitRef);
    invoke-direct {v0, p0}, Lcom/android/mail/browse/MergedAdapter$1;-><init>(Lcom/android/mail/browse/MergedAdapter;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MergedAdapter;->mObserver:Landroid/database/DataSetObserver;

    .line 64
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 4

    .prologue
    .line 179
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    const/4 v1, 0x1

    .line 180
    .local v1, enabled:Z
    #v1=(One);
    iget-object v3, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Reference);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 181
    .local v0, adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->areAllItemsEnabled()Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_0

    .line 183
    .end local v0           #adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    #v0=(Conflicted);
    return v1
.end method

.method public getAdapterOffsetForItem(I)Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;
    .locals 7
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    iget-object v5, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 108
    .local v1, adapterCount:I
    #v1=(Integer);
    const/4 v3, 0x0

    .line 109
    .local v3, i:I
    #v3=(Null);
    const/4 v2, 0x0

    .line 111
    .local v2, count:I
    :goto_0
    #v0=(Conflicted);v2=(Integer);v3=(Integer);v4=(Conflicted);v5=(Conflicted);
    if-ge v3, v1, :cond_1

    .line 112
    iget-object v5, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v5=(Reference);
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 113
    .local v0, a:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getCount()I

    move-result v5

    #v5=(Integer);
    add-int v4, v2, v5

    .line 114
    .local v4, newCount:I
    #v4=(Integer);
    if-ge p1, v4, :cond_0

    .line 115
    new-instance v5, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    #v5=(UninitRef);
    sub-int v6, p1, v2

    #v6=(Integer);
    invoke-direct {v5, v0, v6}, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;-><init>(Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;I)V

    .line 120
    .end local v0           #a:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    .end local v4           #newCount:I
    :goto_1
    #v0=(Conflicted);v4=(Conflicted);v5=(Reference);v6=(Conflicted);
    return-object v5

    .line 117
    .restart local v0       #a:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    .restart local v4       #newCount:I
    :cond_0
    #v0=(Reference);v4=(Integer);v5=(Integer);v6=(Uninit);
    move v2, v4

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto :goto_0

    .line 120
    .end local v0           #a:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    .end local v4           #newCount:I
    :cond_1
    #v0=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_1
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 90
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    const/4 v1, 0x0

    .line 91
    .local v1, count:I
    #v1=(Null);
    iget-object v3, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Reference);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 92
    .local v0, adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getCount()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v1, v3

    goto :goto_0

    .line 94
    .end local v0           #adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    #v0=(Conflicted);v3=(Boolean);
    return v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 173
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 174
    .local v0, result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    #v0=(Reference);
    iget-object v1, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    #v1=(Reference);
    iget v2, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    #v2=(Integer);
    invoke-interface {v1, v2, p2, p3}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 125
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 126
    .local v0, result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    #v0=(Reference);
    if-nez v0, :cond_0

    .line 127
    const/4 v1, 0x0

    .line 129
    :goto_0
    #v1=(Reference);v2=(Conflicted);
    return-object v1

    :cond_0
    #v1=(Uninit);v2=(Uninit);
    iget-object v1, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    #v1=(Reference);
    iget v2, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    #v2=(Integer);
    invoke-interface {v1, v2}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 134
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    int-to-long v0, p1

    #v0=(LongLo);v1=(LongHi);
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter "position"

    .prologue
    .line 148
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v3

    .line 149
    .local v3, result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    #v3=(Reference);
    const/4 v2, 0x0

    .line 150
    .local v2, otherViewTypeCount:I
    #v2=(Null);
    iget-object v5, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v5=(Reference);
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Reference);v2=(Integer);v5=(Conflicted);
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    #v5=(Boolean);
    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 151
    .local v0, adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    iget-object v5, v3, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    #v5=(Reference);
    if-ne v0, v5, :cond_2

    .line 156
    .end local v0           #adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    #v0=(Conflicted);v5=(Conflicted);
    iget-object v5, v3, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    #v5=(Reference);
    iget v6, v3, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    #v6=(Integer);
    invoke-interface {v5, v6}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getItemViewType(I)I

    move-result v4

    .line 159
    .local v4, type:I
    #v4=(Integer);
    if-ltz v4, :cond_1

    .line 160
    add-int/2addr v4, v2

    .line 162
    :cond_1
    return v4

    .line 154
    .end local v4           #type:I
    .restart local v0       #adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_2
    #v0=(Reference);v4=(Uninit);v6=(Uninit);
    invoke-interface {v0}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getViewTypeCount()I

    move-result v5

    #v5=(Integer);
    add-int/2addr v2, v5

    goto :goto_0
.end method

.method public getSubAdapter(I)Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    return-object v0
.end method

.method public getSubAdapterCount()I
    .locals 1

    .prologue
    .line 81
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    iget-object v0, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v0=(Reference);
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 167
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 168
    .local v0, result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    #v0=(Reference);
    iget-object v1, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    #v1=(Reference);
    iget v2, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    #v2=(Integer);
    invoke-interface {v1, v2, p2, p3}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 139
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    const/4 v1, 0x0

    .line 140
    .local v1, count:I
    #v1=(Null);
    iget-object v3, p0, Lcom/android/mail/browse/MergedAdapter;->mAdapters:Ljava/util/List;

    #v3=(Reference);
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    #v0=(Conflicted);v1=(Integer);v2=(Reference);v3=(Conflicted);
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    .line 141
    .local v0, adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    invoke-interface {v0}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->getViewTypeCount()I

    move-result v3

    #v3=(Integer);
    add-int/2addr v1, v3

    goto :goto_0

    .line 143
    .end local v0           #adapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;,"TT;"
    :cond_0
    #v0=(Conflicted);v3=(Boolean);
    return v1
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 188
    .local p0, this:Lcom/android/mail/browse/MergedAdapter;,"Lcom/android/mail/browse/MergedAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 189
    .local v0, result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<TT;>;"
    #v0=(Reference);
    iget-object v1, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    #v1=(Reference);
    iget v2, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    #v2=(Integer);
    invoke-interface {v1, v2}, Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;->isEnabled(I)Z

    move-result v1

    #v1=(Boolean);
    return v1
.end method
