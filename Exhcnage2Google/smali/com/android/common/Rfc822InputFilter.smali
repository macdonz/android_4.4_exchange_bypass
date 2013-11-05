.class public Lcom/android/common/Rfc822InputFilter;
.super Ljava/lang/Object;
.source "Rfc822InputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v2, 0x0

    .line 37
    #v2=(Null);
    sub-int v4, p3, p2

    #v4=(Integer);
    const/4 v5, 0x1

    #v5=(One);
    if-ne v4, v5, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    #v4=(Char);
    const/16 v5, 0x20

    #v5=(PosByte);
    if-eq v4, v5, :cond_1

    .line 72
    :cond_0
    :goto_0
    :sswitch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Reference);v3=(Conflicted);v4=(Conflicted);
    return-object v2

    .line 43
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Null);v3=(Uninit);v4=(Char);
    move v3, p5

    .line 44
    .local v3, scanBack:I
    #v3=(Integer);
    const/4 v1, 0x0

    .line 45
    .local v1, dotFound:Z
    :goto_1
    #v0=(Conflicted);v1=(Boolean);
    if-lez v3, :cond_0

    .line 46
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    .line 47
    .local v0, c:C
    #v0=(Char);
    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 49
    :sswitch_1
    const/4 v1, 0x1

    .line 50
    #v1=(One);
    goto :goto_1

    .line 54
    :sswitch_2
    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 59
    instance-of v4, p1, Landroid/text/Spanned;

    #v4=(Boolean);
    if-eqz v4, :cond_2

    .line 60
    new-instance v2, Landroid/text/SpannableStringBuilder;

    #v2=(UninitRef);
    const-string v4, ","

    #v4=(Reference);
    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 61
    .local v2, sb:Landroid/text/SpannableStringBuilder;
    #v2=(Reference);
    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 64
    .end local v2           #sb:Landroid/text/SpannableStringBuilder;
    :cond_2
    #v2=(Null);v4=(Boolean);
    const-string v2, ", "

    #v2=(Reference);
    goto :goto_0

    .line 47
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);p0=(Unknown);p1=(Unknown);p2=(Unknown);p3=(Unknown);p4=(Unknown);p5=(Unknown);p6=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x2e -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method
