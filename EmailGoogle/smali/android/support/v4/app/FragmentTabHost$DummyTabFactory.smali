.class Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabHost.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 83
    #v2=(Null);
    new-instance v0, Landroid/view/View;

    #v0=(UninitRef);
    iget-object v1, p0, Landroid/support/v4/app/FragmentTabHost$DummyTabFactory;->mContext:Landroid/content/Context;

    #v1=(Reference);
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, v:Landroid/view/View;
    #v0=(Reference);
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 85
    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 86
    return-object v0
.end method
