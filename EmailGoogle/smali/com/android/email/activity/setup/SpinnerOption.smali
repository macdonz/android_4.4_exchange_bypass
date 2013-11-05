.class public Lcom/android/email/activity/setup/SpinnerOption;
.super Ljava/lang/Object;
.source "SpinnerOption.java"


# instance fields
.field public final label:Ljava/lang/String;

.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .parameter "label"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    .line 38
    iput-object p2, p0, Lcom/android/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
    .locals 4
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 27
    const/4 v1, 0x0

    .local v1, i:I
    #v1=(Null);
    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    #v0=(Integer);v1=(Integer);v2=(Conflicted);v3=(Conflicted);
    if-ge v1, v0, :cond_0

    .line 28
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    .line 29
    .local v2, so:Lcom/android/email/activity/setup/SpinnerOption;
    iget-object v3, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    #v3=(Reference);
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 30
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {p0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 34
    .end local v2           #so:Lcom/android/email/activity/setup/SpinnerOption;
    :cond_0
    #v2=(Conflicted);v3=(Conflicted);
    return-void

    .line 27
    .restart local v2       #so:Lcom/android/email/activity/setup/SpinnerOption;
    :cond_1
    #v2=(Reference);v3=(Boolean);
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/email/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    #v0=(Reference);
    return-object v0
.end method
