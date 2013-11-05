.class Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "ConversationItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/ConversationItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShadowBuilder"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mDragDesc:Ljava/lang/String;

.field private mDragDescX:I

.field private mDragDescY:I

.field private final mTouchX:I

.field private final mTouchY:I

.field private final mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mail/browse/ConversationItemView;


# direct methods
.method public constructor <init>(Lcom/android/mail/browse/ConversationItemView;Landroid/view/View;III)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "count"
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 2140
    iput-object p1, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/android/mail/browse/ConversationItemView;

    .line 2141
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 2142
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    .line 2143
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    #v0=(Reference);
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020097

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 2144
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f10

    invoke-static {v0, v1, p3}, Lcom/android/mail/utils/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    .line 2145
    iput p4, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mTouchX:I

    .line 2146
    iput p5, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mTouchY:I

    .line 2147
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 2163
    #v3=(Null);
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    #v0=(Reference);
    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    #v2=(Integer);
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2164
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2165
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$300()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v1, v1, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2166
    iget-object v0, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mDragDesc:Ljava/lang/String;

    iget v1, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescX:I

    int-to-float v1, v1

    #v1=(Float);
    iget v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescY:I

    int-to-float v2, v2

    #v2=(Float);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$300()Landroid/text/TextPaint;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    #v3=(Float);
    sub-float/2addr v2, v3

    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$300()Landroid/text/TextPaint;

    move-result-object v3

    #v3=(Reference);
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2167
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 4
    .parameter "shadowSize"
    .parameter "shadowTouchPoint"

    .prologue
    .line 2151
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    #v2=(Reference);
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2152
    .local v1, width:I
    #v1=(Integer);
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2154
    .local v0, height:I
    #v0=(Integer);
    invoke-static {}, Lcom/android/mail/browse/ConversationItemView;->access$300()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v3, v3, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2155
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/android/mail/browse/ConversationItemView;

    iget-object v2, v2, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/android/mail/browse/ConversationItemViewCoordinates;->sendersX:I

    #v2=(Integer);
    iput v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescX:I

    .line 2156
    iget-object v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->this$0:Lcom/android/mail/browse/ConversationItemView;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/mail/browse/ConversationItemView;->mCoordinates:Lcom/android/mail/browse/ConversationItemViewCoordinates;

    iget v2, v2, Lcom/android/mail/browse/ConversationItemViewCoordinates;->subjectFontSize:F

    #v2=(Integer);
    float-to-int v2, v2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mDragDescY:I

    .line 2157
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 2158
    iget v2, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mTouchX:I

    iget v3, p0, Lcom/android/mail/browse/ConversationItemView$ShadowBuilder;->mTouchY:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 2159
    return-void
.end method
