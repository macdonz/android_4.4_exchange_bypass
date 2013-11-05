.class public Lcom/android/mail/browse/MultiAdapterSpinner;
.super Landroid/widget/FrameLayout;
.source "MultiAdapterSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;,
        Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/mail/browse/MergedAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mail/browse/MergedAdapter",
            "<",
            "Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mPopup:Landroid/widget/ListPopupWindow;

.field private mSelectedPosition:I

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 93
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Lcom/android/mail/browse/MultiAdapterSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    #p0=(Reference);
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    .line 99
    new-instance v0, Lcom/android/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;

    #v0=(UninitRef);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {v0, v1}, Lcom/android/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;-><init>(Lcom/android/mail/browse/MultiAdapterSpinner$1;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/android/mail/browse/MergedAdapter;

    .line 100
    new-instance v0, Landroid/widget/ListPopupWindow;

    #v0=(UninitRef);
    invoke-direct {v0, p1, p2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    .line 101
    iget-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 102
    iget-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    #v1=(One);
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/android/mail/browse/MergedAdapter;

    #v1=(Reference);
    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 141
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    #v5=(Reference);
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_2

    .line 143
    const/4 v3, 0x0

    .local v3, i:I
    #v3=(Null);
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/android/mail/browse/MergedAdapter;

    #v5=(Reference);
    invoke-virtual {v5}, Lcom/android/mail/browse/MergedAdapter;->getSubAdapterCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    #v2=(Integer);v3=(Integer);
    if-ge v3, v2, :cond_0

    .line 144
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/android/mail/browse/MergedAdapter;

    invoke-virtual {v5, v3}, Lcom/android/mail/browse/MergedAdapter;->getSubAdapter(I)Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;

    invoke-interface {v5}, Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->onShowPopup()V

    .line 143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/browse/MultiAdapterSpinner;->getPaddingLeft()I

    move-result v4

    .line 148
    .local v4, spinnerPaddingLeft:I
    #v4=(Integer);
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, background:Landroid/graphics/drawable/Drawable;
    #v0=(Reference);
    const/4 v1, 0x0

    .line 150
    .local v1, bgOffset:I
    #v1=(Null);
    if-eqz v0, :cond_1

    .line 151
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 152
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    #v5=(Integer);
    neg-int v1, v5

    .line 154
    :cond_1
    #v1=(Integer);v5=(Conflicted);
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    #v5=(Reference);
    add-int v6, v1, v4

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 155
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 156
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    #v6=(One);
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 157
    iget-object v5, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    iget v6, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    #v6=(Integer);
    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 159
    .end local v0           #background:Landroid/graphics/drawable/Drawable;
    .end local v1           #bgOffset:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #spinnerPaddingLeft:I
    :cond_2
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 164
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v1, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    #v1=(Integer);
    if-eq p3, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mAdapter:Lcom/android/mail/browse/MergedAdapter;

    #v1=(Reference);
    invoke-virtual {v1, p3}, Lcom/android/mail/browse/MergedAdapter;->getAdapterOffsetForItem(I)Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;

    move-result-object v0

    .line 168
    .local v0, result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    #v0=(Reference);
    iget-object v1, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mAdapter:Lcom/android/mail/browse/MergedAdapter$ListSpinnerAdapter;

    check-cast v1, Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;

    iget v2, v0, Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;->mLocalPosition:I

    #v2=(Integer);
    invoke-interface {v1, v2}, Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;->canSelect(I)Z

    move-result v1

    #v1=(Boolean);
    if-eqz v1, :cond_1

    .line 169
    iput p3, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mSelectedPosition:I

    .line 174
    :goto_0
    #v1=(Conflicted);
    new-instance v1, Lcom/android/mail/browse/MultiAdapterSpinner$1;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v0}, Lcom/android/mail/browse/MultiAdapterSpinner$1;-><init>(Lcom/android/mail/browse/MultiAdapterSpinner;Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;)V

    #v1=(Reference);
    invoke-virtual {p0, v1}, Lcom/android/mail/browse/MultiAdapterSpinner;->post(Ljava/lang/Runnable;)Z

    .line 182
    .end local v0           #result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    iget-object v1, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 183
    return-void

    .line 171
    .restart local v0       #result:Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition;,"Lcom/android/mail/browse/MergedAdapter$LocalAdapterPosition<Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;>;"
    :cond_1
    #v0=(Reference);v1=(Boolean);v2=(Integer);
    iget-object v1, p0, Lcom/android/mail/browse/MultiAdapterSpinner;->mPopup:Landroid/widget/ListPopupWindow;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    goto :goto_0
.end method
