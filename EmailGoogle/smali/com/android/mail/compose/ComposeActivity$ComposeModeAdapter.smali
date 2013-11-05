.class Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/compose/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeModeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mail/compose/ComposeActivity;


# direct methods
.method public constructor <init>(Lcom/android/mail/compose/ComposeActivity;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    .line 3057
    iput-object p1, p0, Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;->this$0:Lcom/android/mail/compose/ComposeActivity;

    .line 3058
    const v0, 0x7f040023

    #v0=(Integer);
    const v1, 0x7f080099

    #v1=(Integer);
    invoke-virtual {p1}, Lcom/android/mail/compose/ComposeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    #v2=(Reference);
    const v3, 0x7f0f0004

    #v3=(Integer);
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 3060
    #p0=(Reference);
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 3064
    invoke-virtual {p0}, Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 3071
    if-nez p2, :cond_0

    .line 3072
    invoke-direct {p0}, Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    #v0=(Reference);
    const v1, 0x7f040022

    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3074
    :cond_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);
    const v0, 0x7f080099

    #v0=(Integer);
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/mail/compose/ComposeActivity$ComposeModeAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    #v1=(Reference);
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3075
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
