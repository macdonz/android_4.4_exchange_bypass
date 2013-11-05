.class Lcom/android/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;
.super Lcom/android/mail/browse/MergedAdapter;
.source "MultiAdapterSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/MultiAdapterSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MergedSpinnerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mail/browse/MergedAdapter",
        "<",
        "Lcom/android/mail/browse/MultiAdapterSpinner$FancySpinnerAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/mail/browse/MergedAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/browse/MultiAdapterSpinner$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/mail/browse/MultiAdapterSpinner$MergedSpinnerAdapter;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    invoke-super {p0, p1, p2, p3}, Lcom/android/mail/browse/MergedAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method
