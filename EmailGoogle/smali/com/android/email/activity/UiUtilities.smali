.class public Lcom/android/email/activity/UiUtilities;
.super Ljava/lang/Object;
.source "UiUtilities.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    #p0=(Reference);
    return-void
.end method

.method private static checkView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    if-nez p0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    const-string v1, "View doesn\'t exist"

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0

    .line 101
    :cond_0
    #v0=(Uninit);v1=(Uninit);
    return-object p0
.end method

.method public static getView(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getView(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->checkView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setVisibilitySafe(Landroid/app/Activity;II)V
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0, p2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "visibility"

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_0
    return-void
.end method

.method public static setVisibilitySafe(Landroid/view/View;II)V
    .locals 1
    .parameter "parent"
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0, p2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 125
    return-void
.end method
