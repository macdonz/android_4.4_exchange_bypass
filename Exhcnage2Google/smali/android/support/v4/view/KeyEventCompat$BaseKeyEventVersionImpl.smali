.class Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.super Ljava/lang/Object;
.source "KeyEventCompat.java"

# interfaces
.implements Landroid/support/v4/view/KeyEventCompat$KeyEventVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private static metaStateFilterDirectionalModifiers(IIIII)I
    .locals 5
    .parameter "metaState"
    .parameter "modifiers"
    .parameter "basic"
    .parameter "left"
    .parameter "right"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v3, 0x0

    .line 55
    #v3=(Null);
    and-int v4, p1, p2

    #v4=(Integer);
    if-eqz v4, :cond_0

    move v1, v2

    .line 56
    .local v1, wantBasic:Z
    :goto_0
    #v1=(Boolean);
    or-int v0, p3, p4

    .line 57
    .local v0, directional:I
    #v0=(Integer);
    and-int v4, p1, v0

    if-eqz v4, :cond_1

    .line 59
    .local v2, wantLeftOrRight:Z
    :goto_1
    #v2=(Boolean);
    if-eqz v1, :cond_4

    .line 60
    if-eqz v2, :cond_2

    .line 61
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #v3=(UninitRef);
    const-string v4, "bad arguments"

    #v4=(Reference);
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v3=(Reference);
    throw v3

    .end local v0           #directional:I
    .end local v1           #wantBasic:Z
    .end local v2           #wantLeftOrRight:Z
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(One);v3=(Null);v4=(Integer);
    move v1, v3

    .line 55
    #v1=(Null);
    goto :goto_0

    .restart local v0       #directional:I
    .restart local v1       #wantBasic:Z
    :cond_1
    #v0=(Integer);v1=(Boolean);
    move v2, v3

    .line 57
    #v2=(Null);
    goto :goto_1

    .line 63
    .restart local v2       #wantLeftOrRight:Z
    :cond_2
    #v2=(Boolean);
    xor-int/lit8 v3, v0, -0x1

    #v3=(Integer);
    and-int/2addr p0, v3

    .line 67
    .end local p0
    :cond_3
    :goto_2
    return p0

    .line 64
    .restart local p0
    :cond_4
    #v3=(Null);
    if-eqz v2, :cond_3

    .line 65
    xor-int/lit8 v3, p2, -0x1

    #v3=(Integer);
    and-int/2addr p0, v3

    goto :goto_2
.end method


# virtual methods
.method public metaStateHasModifiers(II)Z
    .locals 4
    .parameter "metaState"
    .parameter "modifiers"

    .prologue
    const/4 v0, 0x1

    .line 84
    #v0=(One);
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v1

    #v1=(Integer);
    and-int/lit16 p1, v1, 0xf7

    .line 85
    const/16 v1, 0x40

    #v1=(PosByte);
    const/16 v2, 0x80

    #v2=(PosShort);
    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    .line 87
    const/4 v1, 0x2

    const/16 v2, 0x10

    #v2=(PosByte);
    const/16 v3, 0x20

    #v3=(PosByte);
    invoke-static {p1, p2, v1, v2, v3}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->metaStateFilterDirectionalModifiers(IIIII)I

    move-result p1

    .line 89
    if-ne p1, p2, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public metaStateHasNoModifiers(I)Z
    .locals 1
    .parameter "metaState"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;->normalizeMetaState(I)I

    move-result v0

    #v0=(Integer);
    and-int/lit16 v0, v0, 0xf7

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(Integer);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method public normalizeMetaState(I)I
    .locals 1
    .parameter "metaState"

    .prologue
    .line 73
    and-int/lit16 v0, p1, 0xc0

    #v0=(Integer);
    if-eqz v0, :cond_0

    .line 74
    or-int/lit8 p1, p1, 0x1

    .line 76
    :cond_0
    and-int/lit8 v0, p1, 0x30

    if-eqz v0, :cond_1

    .line 77
    or-int/lit8 p1, p1, 0x2

    .line 79
    :cond_1
    and-int/lit16 v0, p1, 0xf7

    return v0
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 99
    return-void
.end method
