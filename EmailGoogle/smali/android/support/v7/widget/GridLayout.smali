.class public Landroid/support/v7/widget/GridLayout;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/GridLayout$Alignment;,
        Landroid/support/v7/widget/GridLayout$Spec;,
        Landroid/support/v7/widget/GridLayout$Interval;,
        Landroid/support/v7/widget/GridLayout$Bounds;,
        Landroid/support/v7/widget/GridLayout$PackedMap;,
        Landroid/support/v7/widget/GridLayout$Assoc;,
        Landroid/support/v7/widget/GridLayout$MutableInt;,
        Landroid/support/v7/widget/GridLayout$Arc;,
        Landroid/support/v7/widget/GridLayout$LayoutParams;,
        Landroid/support/v7/widget/GridLayout$Axis;
    }
.end annotation


# static fields
.field public static final BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final END:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final FILL:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final NO_PRINTER:Landroid/util/Printer;

.field public static final RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final START:Landroid/support/v7/widget/GridLayout$Alignment;

.field public static final TOP:Landroid/support/v7/widget/GridLayout$Alignment;

.field private static final TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

.field static final UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/util/LogPrinter;

    #v0=(UninitRef);
    const/4 v1, 0x3

    #v1=(PosByte);
    const-class v2, Landroid/support/v7/widget/GridLayout;

    #v2=(Reference);
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    .line 228
    new-instance v0, Landroid/support/v7/widget/GridLayout$1;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$1;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->NO_PRINTER:Landroid/util/Printer;

    .line 2478
    new-instance v0, Landroid/support/v7/widget/GridLayout$2;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$2;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2494
    new-instance v0, Landroid/support/v7/widget/GridLayout$3;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$3;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2510
    new-instance v0, Landroid/support/v7/widget/GridLayout$4;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$4;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2526
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2532
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2538
    sget-object v0, Landroid/support/v7/widget/GridLayout;->LEADING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2544
    sget-object v0, Landroid/support/v7/widget/GridLayout;->TRAILING:Landroid/support/v7/widget/GridLayout$Alignment;

    sput-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2568
    sget-object v0, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    #v1=(Reference);
    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2574
    sget-object v0, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    sget-object v1, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    invoke-static {v0, v1}, Landroid/support/v7/widget/GridLayout;->createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2581
    new-instance v0, Landroid/support/v7/widget/GridLayout$6;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$6;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2600
    new-instance v0, Landroid/support/v7/widget/GridLayout$7;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$7;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    .line 2656
    new-instance v0, Landroid/support/v7/widget/GridLayout$8;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$8;-><init>()V

    #v0=(Reference);
    sput-object v0, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 297
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 289
    const/4 v0, 0x0

    #v0=(Null);
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    #p0=(Reference);
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    #v4=(Null);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v2, 0x0

    .line 269
    #v2=(Null);
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    #p0=(Reference);
    new-instance v1, Landroid/support/v7/widget/GridLayout$Axis;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v3, v4}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;ZLandroid/support/v7/widget/GridLayout$1;)V

    #v1=(Reference);
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 255
    new-instance v1, Landroid/support/v7/widget/GridLayout$Axis;

    #v1=(UninitRef);
    invoke-direct {v1, p0, v2, v4}, Landroid/support/v7/widget/GridLayout$Axis;-><init>(Landroid/support/v7/widget/GridLayout;ZLandroid/support/v7/widget/GridLayout$1;)V

    #v1=(Reference);
    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 256
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    .line 257
    iput-boolean v2, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    .line 258
    iput v3, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    .line 260
    iput v2, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 261
    sget-object v1, Landroid/support/v7/widget/GridLayout;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v1, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v7/gridlayout/R$dimen;->default_gap:I

    #v2=(Integer);
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    #v1=(Integer);
    iput v1, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    .line 271
    sget-object v1, Landroid/support/v7/gridlayout/R$styleable;->GridLayout:[I

    #v1=(Reference);
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 273
    .local v0, a:Landroid/content/res/TypedArray;
    #v0=(Reference);
    const/4 v1, 0x1

    #v1=(One);
    const/high16 v2, -0x8000

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowCount(I)V

    .line 274
    const/4 v1, 0x2

    #v1=(PosByte);
    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnCount(I)V

    .line 275
    const/4 v1, 0x0

    #v1=(Null);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setOrientation(I)V

    .line 276
    const/4 v1, 0x3

    #v1=(PosByte);
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 277
    const/4 v1, 0x4

    #v1=(PosByte);
    const/4 v2, 0x1

    #v2=(One);
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    #v1=(Integer);
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setAlignmentMode(I)V

    .line 278
    const/4 v1, 0x5

    #v1=(PosByte);
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setRowOrderPreserved(Z)V

    .line 279
    const/4 v1, 0x6

    #v1=(PosByte);
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    #v1=(Boolean);
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayout;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    return-void

    .line 281
    :catchall_0
    #v1=(Integer);v2=(Integer);
    move-exception v1

    #v1=(Reference);
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 164
    invoke-static {p0}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static adjust(II)I
    .locals 2
    .parameter "measureSpec"
    .parameter "delta"

    .prologue
    .line 932
    add-int v0, p0, p1

    #v0=(Integer);
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    #v1=(Integer);
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, a:[Ljava/lang/Object;,"[TT;"
    .local p1, b:[Ljava/lang/Object;,"[TT;"
    const/4 v4, 0x0

    .line 613
    #v4=(Null);
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    #v2=(Integer);
    array-length v3, p1

    #v3=(Integer);
    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    #v0=(Reference);
    check-cast v0, [Ljava/lang/Object;

    .line 614
    .local v0, result:[Ljava/lang/Object;,"[TT;"
    array-length v1, p0

    #v1=(Integer);
    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .parameter "flexibility"

    .prologue
    .line 2674
    and-int/lit8 v0, p0, 0x2

    #v0=(Integer);
    if-eqz v0, :cond_0

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

.method private checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V
    .locals 8
    .parameter "lp"
    .parameter "horizontal"

    .prologue
    const/high16 v7, -0x8000

    .line 811
    #v7=(Integer);
    if-eqz p2, :cond_3

    const-string v2, "column"

    .line 812
    .local v2, groupName:Ljava/lang/String;
    :goto_0
    #v2=(Reference);
    if-eqz p2, :cond_4

    iget-object v4, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 813
    .local v4, spec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    #v4=(Reference);
    iget-object v3, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 814
    .local v3, span:Landroid/support/v7/widget/GridLayout$Interval;
    #v3=(Reference);
    iget v5, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    #v5=(Integer);
    if-eq v5, v7, :cond_0

    iget v5, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    if-gez v5, :cond_0

    .line 815
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices must be positive"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 817
    :cond_0
    #v5=(Conflicted);v6=(Conflicted);
    if-eqz p2, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 818
    .local v0, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_2
    #v0=(Reference);
    iget v1, v0, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 819
    .local v1, count:I
    #v1=(Integer);
    if-eq v1, v7, :cond_2

    .line 820
    iget v5, v3, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v5=(Integer);
    if-le v5, v1, :cond_1

    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " indices (start + span) mustn\'t exceed the "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 824
    :cond_1
    #v5=(Conflicted);v6=(Conflicted);
    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v5

    #v5=(Integer);
    if-le v5, v1, :cond_2

    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " span mustn\'t exceed the "

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v7/widget/GridLayout;->handleInvalidParams(Ljava/lang/String;)V

    .line 828
    :cond_2
    #v5=(Conflicted);v6=(Conflicted);
    return-void

    .line 811
    .end local v0           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1           #count:I
    .end local v2           #groupName:Ljava/lang/String;
    .end local v3           #span:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v4           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);
    const-string v2, "row"

    #v2=(Reference);
    goto :goto_0

    .line 812
    .restart local v2       #groupName:Ljava/lang/String;
    :cond_4
    iget-object v4, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    #v4=(Reference);
    goto :goto_1

    .line 817
    .restart local v3       #span:Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v4       #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_5
    #v3=(Reference);v5=(Conflicted);v6=(Conflicted);
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    goto :goto_2
.end method

.method private static clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I
    .locals 3
    .parameter "minorRange"
    .parameter "minorWasDefined"
    .parameter "count"

    .prologue
    .line 719
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v1

    .line 720
    .local v1, size:I
    #v1=(Integer);
    if-nez p2, :cond_0

    .line 724
    .end local v1           #size:I
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);
    return v1

    .line 723
    .restart local v1       #size:I
    :cond_0
    #v0=(Uninit);v2=(Uninit);
    if-eqz p1, :cond_1

    iget v2, p0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    #v2=(Integer);
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 724
    .local v0, min:I
    :goto_1
    #v0=(Integer);v2=(Conflicted);
    sub-int v2, p2, v0

    #v2=(Integer);
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 723
    .end local v0           #min:I
    :cond_1
    #v0=(Uninit);v2=(Uninit);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_1
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    .prologue
    .line 870
    const/4 v4, 0x1

    .line 871
    .local v4, result:I
    #v4=(One);
    const/4 v2, 0x0

    .local v2, i:I
    #v2=(Null);
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v0

    .local v0, N:I
    :goto_0
    #v0=(Integer);v1=(Conflicted);v2=(Integer);v3=(Conflicted);v4=(Integer);v5=(Conflicted);v6=(Conflicted);
    if-ge v2, v0, :cond_1

    .line 872
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 873
    .local v1, c:Landroid/view/View;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    #v5=(Integer);
    const/16 v6, 0x8

    #v6=(PosByte);
    if-ne v5, v6, :cond_0

    .line 871
    :goto_1
    #v6=(Integer);
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 874
    :cond_0
    #v6=(PosByte);
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 875
    .local v3, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    mul-int/lit8 v5, v4, 0x1f

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$LayoutParams;->hashCode()I

    move-result v6

    #v6=(Integer);
    add-int v4, v5, v6

    goto :goto_1

    .line 877
    .end local v1           #c:Landroid/view/View;
    .end local v3           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    :cond_1
    #v1=(Conflicted);v3=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    return v4
.end method

.method private consistencyCheck()V
    .locals 2

    .prologue
    .line 881
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    #v0=(Integer);
    if-nez v0, :cond_1

    .line 882
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->validateLayoutParams()V

    .line 883
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 890
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);
    return-void

    .line 884
    :cond_1
    #v0=(Integer);v1=(Uninit);
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->computeLayoutParamsHashCode()I

    move-result v1

    #v1=(Integer);
    if-eq v0, v1, :cond_0

    .line 885
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mPrinter:Landroid/util/Printer;

    #v0=(Reference);
    const-string v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    #v1=(Reference);
    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 888
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    goto :goto_0
.end method

.method private static createSwitchingAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 1
    .parameter "ltr"
    .parameter "rtl"

    .prologue
    .line 2547
    new-instance v0, Landroid/support/v7/widget/GridLayout$5;

    #v0=(UninitRef);
    invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/GridLayout$5;-><init>(Landroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$Alignment;)V

    #v0=(Reference);
    return-object v0
.end method

.method private static fits([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "value"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 696
    #v1=(Null);
    array-length v2, p0

    #v2=(Integer);
    if-le p3, v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    .line 699
    :cond_1
    #v0=(Uninit);v1=(Null);
    move v0, p2

    .local v0, i:I
    :goto_1
    #v0=(Integer);
    if-ge v0, p3, :cond_2

    .line 700
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 704
    :cond_2
    const/4 v1, 0x1

    #v1=(One);
    goto :goto_0
.end method

.method static getAlignment(IZ)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 4
    .parameter "gravity"
    .parameter "horizontal"

    .prologue
    .line 620
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 621
    .local v1, mask:I
    :goto_0
    #v1=(PosByte);
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 622
    .local v2, shift:I
    :goto_1
    #v2=(PosByte);
    and-int v3, p0, v1

    #v3=(Integer);
    shr-int v0, v3, v2

    .line 623
    .local v0, flags:I
    #v0=(Integer);
    sparse-switch v0, :sswitch_data_0

    .line 637
    sget-object v3, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    :goto_2
    #v3=(Reference);
    return-object v3

    .line 620
    .end local v0           #flags:I
    .end local v1           #mask:I
    .end local v2           #shift:I
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);
    const/16 v1, 0x70

    #v1=(PosByte);
    goto :goto_0

    .line 621
    .restart local v1       #mask:I
    :cond_1
    const/4 v2, 0x4

    #v2=(PosByte);
    goto :goto_1

    .line 625
    .restart local v0       #flags:I
    .restart local v2       #shift:I
    :sswitch_0
    #v0=(Integer);v3=(Integer);
    if-eqz p1, :cond_2

    sget-object v3, Landroid/support/v7/widget/GridLayout;->LEFT:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    :cond_2
    #v3=(Integer);
    sget-object v3, Landroid/support/v7/widget/GridLayout;->TOP:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    .line 627
    :sswitch_1
    #v3=(Integer);
    if-eqz p1, :cond_3

    sget-object v3, Landroid/support/v7/widget/GridLayout;->RIGHT:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    :cond_3
    #v3=(Integer);
    sget-object v3, Landroid/support/v7/widget/GridLayout;->BOTTOM:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    .line 629
    :sswitch_2
    #v3=(Integer);
    sget-object v3, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    .line 631
    :sswitch_3
    #v3=(Integer);
    sget-object v3, Landroid/support/v7/widget/GridLayout;->CENTER:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    .line 633
    :sswitch_4
    #v3=(Integer);
    sget-object v3, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    .line 635
    :sswitch_5
    #v3=(Integer);
    sget-object v3, Landroid/support/v7/widget/GridLayout;->END:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    goto :goto_2

    .line 623
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);p0=(Unknown);p1=(Unknown);
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I
    .locals 8
    .parameter "c"
    .parameter "p"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    const/4 v1, 0x1

    #v1=(One);
    const/4 v5, 0x0

    .line 654
    #v5=(Null);
    iget-boolean v6, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    #v6=(Boolean);
    if-nez v6, :cond_0

    .line 663
    :goto_0
    #v0=(Conflicted);v1=(Boolean);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Integer);v6=(Integer);v7=(Conflicted);
    return v5

    .line 657
    :cond_0
    #v0=(Uninit);v1=(One);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);v7=(Uninit);
    if-eqz p3, :cond_2

    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 658
    .local v4, spec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_1
    #v4=(Reference);
    if-eqz p3, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 659
    .local v0, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_2
    #v0=(Reference);
    iget-object v3, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 660
    .local v3, span:Landroid/support/v7/widget/GridLayout$Interval;
    #v3=(Reference);
    if-eqz p3, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p4, :cond_4

    move v2, v1

    .line 661
    .local v2, leading1:Z
    :goto_3
    #v2=(Boolean);
    if-eqz v2, :cond_7

    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    #v6=(Integer);
    if-nez v6, :cond_6

    .line 663
    .local v1, isAtEdge:Z
    :cond_1
    :goto_4
    #v1=(Boolean);v7=(Conflicted);
    invoke-direct {p0, p1, v1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v5

    #v5=(Integer);
    goto :goto_0

    .line 657
    .end local v0           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1           #isAtEdge:Z
    .end local v2           #leading1:Z
    .end local v3           #span:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v4           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_2
    #v0=(Uninit);v1=(One);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Boolean);v7=(Uninit);
    iget-object v4, p2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    #v4=(Reference);
    goto :goto_1

    .line 658
    .restart local v4       #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    goto :goto_2

    .restart local v0       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .restart local v3       #span:Landroid/support/v7/widget/GridLayout$Interval;
    :cond_4
    #v3=(Reference);
    move v2, v5

    .line 660
    #v2=(Null);
    goto :goto_3

    :cond_5
    #v2=(Uninit);
    move v2, p4

    #v2=(Boolean);
    goto :goto_3

    .restart local v2       #leading1:Z
    :cond_6
    #v6=(Integer);
    move v1, v5

    .line 661
    #v1=(Null);
    goto :goto_4

    :cond_7
    #v1=(One);v6=(Boolean);
    iget v6, v3, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v6=(Integer);
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getCount()I

    move-result v7

    #v7=(Integer);
    if-eq v6, v7, :cond_1

    move v1, v5

    #v1=(Null);
    goto :goto_4
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    #v0=(Reference);
    const-class v1, Landroid/support/v7/widget/Space;

    #v1=(Reference);
    if-ne v0, v1, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Reference);
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mDefaultGap:I

    #v0=(Integer);
    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .parameter "c"
    .parameter "isAtEdge"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 650
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 679
    iget v5, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    #v5=(Integer);
    const/4 v6, 0x1

    #v6=(One);
    if-ne v5, v6, :cond_0

    .line 680
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/GridLayout;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 687
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);
    return v5

    .line 682
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 683
    .local v0, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    #v0=(Reference);
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getLeadingMargins()[I

    move-result-object v3

    .line 684
    .local v3, margins:[I
    :goto_2
    #v3=(Reference);
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v2

    .line 685
    .local v2, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    #v2=(Reference);
    if-eqz p2, :cond_3

    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 686
    .local v4, spec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_3
    #v4=(Reference);
    if-eqz p3, :cond_4

    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    #v5=(Reference);
    iget v1, v5, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 687
    .local v1, index:I
    :goto_4
    #v1=(Integer);
    aget v5, v3, v1

    #v5=(Integer);
    goto :goto_0

    .line 682
    .end local v0           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v1           #index:I
    .end local v2           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v3           #margins:[I
    .end local v4           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_1
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    goto :goto_1

    .line 683
    .restart local v0       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->getTrailingMargins()[I

    move-result-object v3

    #v3=(Reference);
    goto :goto_2

    .line 685
    .restart local v2       #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .restart local v3       #margins:[I
    :cond_3
    #v2=(Reference);
    iget-object v4, v2, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    #v4=(Reference);
    goto :goto_3

    .line 686
    .restart local v4       #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_4
    iget-object v5, v4, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    #v5=(Reference);
    iget v1, v5, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v1=(Integer);
    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 975
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    #v0=(Integer);
    return v0

    :cond_0
    #v0=(Uninit);
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    #v0=(Integer);
    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "child"
    .parameter "horizontal"

    .prologue
    .line 692
    const/4 v0, 0x1

    #v0=(One);
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    #v0=(Integer);
    const/4 v1, 0x0

    #v1=(Null);
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    return v0
.end method

.method private static handleInvalidParams(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #v0=(UninitRef);
    new-instance v1, Ljava/lang/StringBuilder;

    #v1=(UninitRef);
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #v1=(Reference);
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    #v2=(Reference);
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #v0=(Reference);
    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Landroid/support/v7/widget/GridLayout;->mLastLayoutParamsHashCode:I

    .line 787
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 788
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateStructure()V

    .line 790
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 791
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayout$Axis;->invalidateValues()V

    .line 800
    :cond_0
    return-void
.end method

.method private isLayoutRtlCompat()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 675
    #v0=(One);
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    #v1=(Integer);
    if-ne v1, v0, :cond_0

    :goto_0
    #v0=(Boolean);
    return v0

    :cond_0
    #v0=(One);
    const/4 v0, 0x0

    #v0=(Null);
    goto :goto_0
.end method

.method static max2([II)I
    .locals 4
    .parameter "a"
    .parameter "valueIfEmpty"

    .prologue
    .line 604
    move v2, p1

    .line 605
    .local v2, result:I
    #v2=(Integer);
    const/4 v1, 0x0

    .local v1, i:I
    #v1=(Null);
    array-length v0, p0

    .local v0, N:I
    :goto_0
    #v0=(Integer);v1=(Integer);v3=(Conflicted);
    if-ge v1, v0, :cond_0

    .line 606
    aget v3, p0, v1

    #v3=(Integer);
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    #v3=(Conflicted);
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 3
    .parameter "child"
    .parameter "parentWidthSpec"
    .parameter "parentHeightSpec"
    .parameter "childWidth"
    .parameter "childHeight"

    .prologue
    .line 897
    const/4 v2, 0x1

    #v2=(One);
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    #v2=(Integer);
    invoke-static {p2, v2, p4}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 899
    .local v1, childWidthSpec:I
    #v1=(Integer);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-direct {p0, p1, v2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    #v2=(Integer);
    invoke-static {p3, v2, p5}, Landroid/support/v7/widget/GridLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 901
    .local v0, childHeightSpec:I
    #v0=(Integer);
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 902
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .parameter "widthSpec"
    .parameter "heightSpec"
    .parameter "firstPass"

    .prologue
    .line 906
    const/16 v17, 0x0

    .local v17, i:I
    #v17=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v13

    .local v13, N:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Integer);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Integer);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    move/from16 v0, v17

    #v0=(Integer);
    if-ge v0, v13, :cond_7

    .line 907
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v17

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 908
    .local v3, c:Landroid/view/View;
    #v3=(Reference);
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    #v2=(Integer);
    const/16 v4, 0x8

    #v4=(PosByte);
    if-ne v2, v4, :cond_1

    .line 906
    :cond_0
    :goto_1
    #v2=(Conflicted);v4=(Conflicted);
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 909
    :cond_1
    #v2=(Integer);v4=(PosByte);
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v19

    .line 910
    .local v19, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    #v19=(Reference);
    if-eqz p3, :cond_2

    .line 911
    move-object/from16 v0, v19

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v6=(Integer);
    move-object/from16 v0, v19

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v7=(Integer);
    move-object/from16 v2, p0

    #v2=(Reference);
    move/from16 v4, p1

    #v4=(Integer);
    move/from16 v5, p2

    #v5=(Integer);
    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 913
    :cond_2
    #v2=(Integer);v4=(PosByte);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    if-nez v2, :cond_3

    const/16 v16, 0x1

    .line 914
    .local v16, horizontal:Z
    :goto_2
    #v16=(Boolean);
    if-eqz v16, :cond_4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    .line 915
    .local v21, spec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_3
    #v21=(Reference);
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    #v2=(Reference);
    sget-object v4, Landroid/support/v7/widget/GridLayout;->FILL:Landroid/support/v7/widget/GridLayout$Alignment;

    #v4=(Reference);
    if-ne v2, v4, :cond_0

    .line 916
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v20, v0

    .line 917
    .local v20, span:Landroid/support/v7/widget/GridLayout$Interval;
    #v20=(Reference);
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 918
    .local v14, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_4
    #v14=(Reference);
    invoke-virtual {v14}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v18

    .line 919
    .local v18, locations:[I
    #v18=(Reference);
    move-object/from16 v0, v20

    iget v2, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    #v2=(Integer);
    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    #v4=(Integer);
    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 920
    .local v15, cellSize:I
    #v15=(Integer);
    move-object/from16 v0, p0

    move/from16 v1, v16

    #v1=(Boolean);
    invoke-direct {v0, v3, v1}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 921
    .local v6, viewSize:I
    #v6=(Integer);
    if-eqz v16, :cond_6

    .line 922
    move-object/from16 v0, v19

    iget v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    #v7=(Integer);
    move-object/from16 v2, p0

    #v2=(Reference);
    move/from16 v4, p1

    move/from16 v5, p2

    #v5=(Integer);
    invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 913
    .end local v6           #viewSize:I
    .end local v14           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v20           #span:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v21           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_3
    #v1=(Integer);v2=(Integer);v4=(PosByte);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    const/16 v16, 0x0

    #v16=(Null);
    goto :goto_2

    .line 914
    .restart local v16       #horizontal:Z
    :cond_4
    #v16=(Boolean);
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v21, v0

    #v21=(Reference);
    goto :goto_3

    .line 917
    .restart local v20       #span:Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v21       #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_5
    #v2=(Reference);v4=(Reference);v20=(Reference);
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v14=(Reference);
    goto :goto_4

    .line 924
    .restart local v6       #viewSize:I
    .restart local v14       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .restart local v15       #cellSize:I
    .restart local v18       #locations:[I
    :cond_6
    #v1=(Boolean);v2=(Integer);v4=(Integer);v6=(Integer);v15=(Integer);v18=(Reference);
    move-object/from16 v0, v19

    iget v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    #v11=(Integer);
    move-object/from16 v7, p0

    #v7=(Reference);
    move-object v8, v3

    #v8=(Reference);
    move/from16 v9, p1

    #v9=(Integer);
    move/from16 v10, p2

    #v10=(Integer);
    move v12, v6

    #v12=(Integer);
    invoke-direct/range {v7 .. v12}, Landroid/support/v7/widget/GridLayout;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto/16 :goto_1

    .line 929
    .end local v3           #c:Landroid/view/View;
    .end local v6           #viewSize:I
    .end local v14           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v15           #cellSize:I
    .end local v16           #horizontal:Z
    .end local v18           #locations:[I
    .end local v19           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v20           #span:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v21           #spec:Landroid/support/v7/widget/GridLayout$Spec;
    :cond_7
    #v0=(Integer);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .parameter "a"
    .parameter "start"
    .parameter "end"
    .parameter "value"

    .prologue
    .line 708
    array-length v0, p0

    .line 709
    .local v0, length:I
    #v0=(Integer);
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    #v1=(Integer);
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    #v2=(Integer);
    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 710
    return-void
.end method

.method private static setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V
    .locals 2
    .parameter "lp"
    .parameter "row"
    .parameter "rowSpan"
    .parameter "col"
    .parameter "colSpan"

    .prologue
    .line 713
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    #v0=(UninitRef);
    add-int v1, p1, p2

    #v1=(Integer);
    invoke-direct {v0, p1, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setRowSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 714
    new-instance v0, Landroid/support/v7/widget/GridLayout$Interval;

    #v0=(UninitRef);
    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Landroid/support/v7/widget/GridLayout$Interval;-><init>(II)V

    #v0=(Reference);
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;->setColumnSpecSpan(Landroid/support/v7/widget/GridLayout$Interval;)V

    .line 715
    return-void
.end method

.method public static spec(I)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"

    .prologue
    .line 2414
    const/4 v0, 0x1

    #v0=(One);
    invoke-static {p0, v0}, Landroid/support/v7/widget/GridLayout;->spec(II)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public static spec(II)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 1
    .parameter "start"
    .parameter "size"

    .prologue
    .line 2398
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    #v0=(Reference);
    invoke-static {p0, p1, v0}, Landroid/support/v7/widget/GridLayout;->spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILandroid/support/v7/widget/GridLayout$Alignment;)Landroid/support/v7/widget/GridLayout$Spec;
    .locals 6
    .parameter "start"
    .parameter "size"
    .parameter "alignment"

    .prologue
    .line 2363
    new-instance v0, Landroid/support/v7/widget/GridLayout$Spec;

    #v0=(UninitRef);
    const/high16 v1, -0x8000

    #v1=(Integer);
    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #v1=(Boolean);
    const/4 v5, 0x0

    #v5=(Null);
    move v2, p0

    #v2=(Integer);
    move v3, p1

    #v3=(Integer);
    move-object v4, p2

    #v4=(Reference);
    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/GridLayout$Spec;-><init>(ZIILandroid/support/v7/widget/GridLayout$Alignment;Landroid/support/v7/widget/GridLayout$1;)V

    #v0=(Reference);
    return-object v0

    :cond_0
    #v0=(UninitRef);v1=(Integer);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    const/4 v1, 0x0

    #v1=(Null);
    goto :goto_0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 729
    move-object/from16 v0, p0

    #v0=(Reference);
    iget v0, v0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    #v0=(Integer);
    move/from16 v19, v0

    #v19=(Integer);
    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 730
    .local v5, horizontal:Z
    :goto_0
    #v5=(Boolean);
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    .line 731
    .local v3, axis:Landroid/support/v7/widget/GridLayout$Axis;
    :goto_1
    #v3=(Reference);
    iget v0, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    #v0=(Integer);
    move/from16 v19, v0

    const/high16 v20, -0x8000

    #v20=(Integer);
    move/from16 v0, v19

    move/from16 v1, v20

    #v1=(Integer);
    if-eq v0, v1, :cond_5

    iget v4, v3, Landroid/support/v7/widget/GridLayout$Axis;->definedCount:I

    .line 733
    .local v4, count:I
    :goto_2
    #v4=(Integer);
    const/4 v8, 0x0

    .line 734
    .local v8, major:I
    #v8=(Null);
    const/4 v14, 0x0

    .line 735
    .local v14, minor:I
    #v14=(Null);
    new-array v13, v4, [I

    .line 737
    .local v13, maxSizes:[I
    #v13=(Reference);
    const/4 v6, 0x0

    .local v6, i:I
    #v6=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v2

    .local v2, N:I
    :goto_3
    #v2=(Integer);v6=(Integer);v7=(Conflicted);v8=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v14=(Integer);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    if-ge v6, v2, :cond_d

    .line 738
    move-object/from16 v0, p0

    #v0=(Reference);
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    #v19=(Reference);
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 740
    .local v7, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    if-eqz v5, :cond_6

    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    .line 741
    .local v11, majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_4
    #v11=(Reference);
    iget-object v9, v11, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 742
    .local v9, majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    #v9=(Reference);
    iget-boolean v12, v11, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    .line 743
    .local v12, majorWasDefined:Z
    #v12=(Boolean);
    invoke-virtual {v9}, Landroid/support/v7/widget/GridLayout$Interval;->size()I

    move-result v10

    .line 744
    .local v10, majorSpan:I
    #v10=(Integer);
    if-eqz v12, :cond_0

    .line 745
    iget v8, v9, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 748
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    .line 749
    .local v17, minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    :goto_5
    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v15, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    .line 750
    .local v15, minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    #v15=(Reference);
    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->startDefined:Z

    #v0=(Boolean);
    move/from16 v18, v0

    .line 751
    .local v18, minorWasDefined:Z
    #v18=(Boolean);
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Landroid/support/v7/widget/GridLayout;->clip(Landroid/support/v7/widget/GridLayout$Interval;ZI)I

    move-result v16

    .line 752
    .local v16, minorSpan:I
    #v16=(Integer);
    if-eqz v18, :cond_1

    .line 753
    iget v14, v15, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    .line 756
    :cond_1
    if-eqz v4, :cond_b

    .line 758
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 759
    :cond_2
    :goto_6
    #v0=(Integer);v19=(Conflicted);
    add-int v19, v14, v16

    #v19=(Integer);
    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Landroid/support/v7/widget/GridLayout;->fits([IIII)Z

    move-result v19

    #v19=(Boolean);
    if-nez v19, :cond_a

    .line 760
    if-eqz v18, :cond_8

    .line 761
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 729
    .end local v2           #N:I
    .end local v3           #axis:Landroid/support/v7/widget/GridLayout$Axis;
    .end local v4           #count:I
    .end local v5           #horizontal:Z
    .end local v6           #i:I
    .end local v7           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v8           #major:I
    .end local v9           #majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v13           #maxSizes:[I
    .end local v14           #minor:I
    .end local v15           #minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_3
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Integer);v20=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    goto :goto_0

    .line 730
    .restart local v5       #horizontal:Z
    :cond_4
    #v5=(Boolean);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v3=(Reference);
    goto :goto_1

    .line 731
    .restart local v3       #axis:Landroid/support/v7/widget/GridLayout$Axis;
    :cond_5
    #v0=(Integer);v1=(Integer);v20=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    goto :goto_2

    .line 740
    .restart local v2       #N:I
    .restart local v4       #count:I
    .restart local v6       #i:I
    .restart local v7       #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .restart local v8       #major:I
    .restart local v13       #maxSizes:[I
    .restart local v14       #minor:I
    :cond_6
    #v0=(Reference);v2=(Integer);v4=(Integer);v6=(Integer);v7=(Reference);v8=(Integer);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Reference);v14=(Integer);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Reference);
    iget-object v11, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    #v11=(Reference);
    goto :goto_4

    .line 748
    .restart local v9       #majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v10       #majorSpan:I
    .restart local v11       #majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .restart local v12       #majorWasDefined:Z
    :cond_7
    #v9=(Reference);v10=(Integer);v12=(Boolean);
    iget-object v0, v7, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v17, v0

    #v17=(Reference);
    goto :goto_5

    .line 763
    .restart local v15       #minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .restart local v16       #minorSpan:I
    .restart local v17       #minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .restart local v18       #minorWasDefined:Z
    :cond_8
    #v0=(Integer);v15=(Reference);v16=(Integer);v18=(Boolean);v19=(Boolean);
    add-int v19, v14, v16

    #v19=(Integer);
    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 764
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 766
    :cond_9
    const/4 v14, 0x0

    .line 767
    #v14=(Null);
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 772
    :cond_a
    #v14=(Integer);v19=(Conflicted);
    add-int v19, v14, v16

    #v19=(Integer);
    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Landroid/support/v7/widget/GridLayout;->procrusteanFill([IIII)V

    .line 775
    :cond_b
    #v19=(Conflicted);
    if-eqz v5, :cond_c

    .line 776
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    .line 781
    :goto_7
    add-int v14, v14, v16

    .line 737
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 778
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Landroid/support/v7/widget/GridLayout;->setCellGroup(Landroid/support/v7/widget/GridLayout$LayoutParams;IIII)V

    goto :goto_7

    .line 783
    .end local v7           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v9           #majorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v10           #majorSpan:I
    .end local v11           #majorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v12           #majorWasDefined:Z
    .end local v15           #minorRange:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v16           #minorSpan:I
    .end local v17           #minorSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v18           #minorWasDefined:Z
    :cond_d
    #v7=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .parameter "p"

    .prologue
    const/4 v2, 0x1

    #v2=(One);
    const/4 v1, 0x0

    .line 832
    #v1=(Null);
    instance-of v3, p1, Landroid/support/v7/widget/GridLayout$LayoutParams;

    #v3=(Boolean);
    if-nez v3, :cond_0

    .line 840
    :goto_0
    #v0=(Conflicted);v1=(Boolean);
    return v1

    :cond_0
    #v0=(Uninit);v1=(Null);
    move-object v0, p1

    .line 835
    #v0=(Reference);
    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    .line 837
    .local v0, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    .line 838
    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/GridLayout;->checkLayoutParams(Landroid/support/v7/widget/GridLayout$LayoutParams;Z)V

    move v1, v2

    .line 840
    #v1=(One);
    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1

    .prologue
    .line 845
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>()V

    #v0=(Reference);
    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 850
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    #v1=(Reference);
    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #v0=(Reference);
    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 855
    new-instance v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    #v0=(UninitRef);
    invoke-direct {v0, p1}, Landroid/support/v7/widget/GridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    #v0=(Reference);
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    return-object v0
.end method

.method final getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;
    .locals 1
    .parameter "alignment"
    .parameter "horizontal"

    .prologue
    .line 992
    sget-object v0, Landroid/support/v7/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/support/v7/widget/GridLayout$Alignment;

    #v0=(Reference);
    if-eq p1, v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Landroid/support/v7/widget/GridLayout;->START:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/support/v7/widget/GridLayout;->BASELINE:Landroid/support/v7/widget/GridLayout$Alignment;

    goto :goto_0
.end method

.method final getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;
    .locals 1
    .parameter "c"

    .prologue
    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Landroid/support/v7/widget/GridLayout$LayoutParams;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .parameter "view"
    .parameter "horizontal"
    .parameter "leading"

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v0

    .line 668
    .local v0, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    #v0=(Reference);
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 671
    .local v1, margin:I
    :goto_0
    #v1=(Integer);
    const/high16 v2, -0x8000

    #v2=(Integer);
    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/support/v7/widget/GridLayout;->getDefaultMargin(Landroid/view/View;Landroid/support/v7/widget/GridLayout$LayoutParams;ZZ)I

    move-result v1

    .end local v1           #margin:I
    :cond_0
    return v1

    .line 668
    :cond_1
    #v1=(Uninit);v2=(Uninit);
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    #v1=(Integer);
    goto :goto_0

    :cond_2
    #v1=(Uninit);
    if-eqz p3, :cond_3

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    #v1=(Integer);
    goto :goto_0

    :cond_3
    #v1=(Uninit);
    iget v1, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->bottomMargin:I

    #v1=(Integer);
    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .parameter "c"
    .parameter "horizontal"

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    #v0=(Integer);
    const/16 v1, 0x8

    #v1=(PosByte);
    if-ne v0, v1, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 982
    :goto_0
    #v1=(Integer);
    return v0

    :cond_0
    #v1=(PosByte);
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/GridLayout;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    #v1=(Integer);
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 51
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1012
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    .line 1014
    sub-int v43, p4, p2

    .line 1015
    .local v43, targetWidth:I
    #v43=(Integer);
    sub-int v42, p5, p3

    .line 1017
    .local v42, targetHeight:I
    #v42=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v34

    .line 1018
    .local v34, paddingLeft:I
    #v34=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v36

    .line 1019
    .local v36, paddingTop:I
    #v36=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v35

    .line 1020
    .local v35, paddingRight:I
    #v35=(Integer);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v33

    .line 1022
    .local v33, paddingBottom:I
    #v33=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v3=(Reference);
    sub-int v6, v43, v34

    #v6=(Integer);
    sub-int v6, v6, v35

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    sub-int v6, v42, v36

    sub-int v6, v6, v33

    invoke-virtual {v3, v6}, Landroid/support/v7/widget/GridLayout$Axis;->layout(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v26

    .line 1026
    .local v26, hLocations:[I
    #v26=(Reference);
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getLocations()[I

    move-result-object v45

    .line 1028
    .local v45, vLocations:[I
    #v45=(Reference);
    const/16 v28, 0x0

    .local v28, i:I
    #v28=(Null);
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->getChildCount()I

    move-result v12

    .local v12, N:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Integer);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v22=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v27=(Conflicted);v28=(Integer);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v37=(Conflicted);v38=(Conflicted);v39=(Conflicted);v40=(Conflicted);v41=(Conflicted);v44=(Conflicted);v46=(Conflicted);v47=(Conflicted);v48=(Conflicted);v49=(Conflicted);v50=(Conflicted);
    move/from16 v0, v28

    #v0=(Integer);
    if-ge v0, v12, :cond_4

    .line 1029
    move-object/from16 v0, p0

    #v0=(Reference);
    move/from16 v1, v28

    #v1=(Integer);
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1030
    .local v4, c:Landroid/view/View;
    #v4=(Reference);
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    #v3=(Integer);
    const/16 v6, 0x8

    #v6=(PosByte);
    if-ne v3, v6, :cond_0

    .line 1028
    :goto_1
    #v0=(Conflicted);v6=(Integer);
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 1031
    :cond_0
    #v0=(Reference);v6=(PosByte);
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/GridLayout;->getLayoutParams(Landroid/view/View;)Landroid/support/v7/widget/GridLayout$LayoutParams;

    move-result-object v30

    .line 1032
    .local v30, lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    #v30=(Reference);
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->columnSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v20, v0

    .line 1033
    .local v20, columnSpec:Landroid/support/v7/widget/GridLayout$Spec;
    #v20=(Reference);
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$LayoutParams;->rowSpec:Landroid/support/v7/widget/GridLayout$Spec;

    move-object/from16 v39, v0

    .line 1035
    .local v39, rowSpec:Landroid/support/v7/widget/GridLayout$Spec;
    #v39=(Reference);
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v19, v0

    .line 1036
    .local v19, colSpan:Landroid/support/v7/widget/GridLayout$Interval;
    #v19=(Reference);
    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/support/v7/widget/GridLayout$Spec;->span:Landroid/support/v7/widget/GridLayout$Interval;

    move-object/from16 v38, v0

    .line 1038
    .local v38, rowSpan:Landroid/support/v7/widget/GridLayout$Interval;
    #v38=(Reference);
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v47, v26, v3

    .line 1039
    .local v47, x1:I
    #v47=(Integer);
    move-object/from16 v0, v38

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->min:I

    aget v49, v45, v3

    .line 1041
    .local v49, y1:I
    #v49=(Integer);
    move-object/from16 v0, v19

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v48, v26, v3

    .line 1042
    .local v48, x2:I
    #v48=(Integer);
    move-object/from16 v0, v38

    iget v3, v0, Landroid/support/v7/widget/GridLayout$Interval;->max:I

    aget v50, v45, v3

    .line 1044
    .local v50, y2:I
    #v50=(Integer);
    sub-int v18, v48, v47

    .line 1045
    .local v18, cellWidth:I
    #v18=(Integer);
    sub-int v17, v50, v49

    .line 1047
    .local v17, cellHeight:I
    #v17=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v32

    .line 1048
    .local v32, pWidth:I
    #v32=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Landroid/support/v7/widget/GridLayout;->getMeasurement(Landroid/view/View;Z)I

    move-result v31

    .line 1050
    .local v31, pHeight:I
    #v31=(Integer);
    move-object/from16 v0, v20

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    #v3=(Reference);
    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/GridLayout;->getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v5

    .line 1051
    .local v5, hAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    #v5=(Reference);
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout$Spec;->alignment:Landroid/support/v7/widget/GridLayout$Alignment;

    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/GridLayout;->getAlignment(Landroid/support/v7/widget/GridLayout$Alignment;Z)Landroid/support/v7/widget/GridLayout$Alignment;

    move-result-object v9

    .line 1053
    .local v9, vAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    #v9=(Reference);
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v3

    move/from16 v0, v28

    #v0=(Integer);
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1054
    .local v2, boundsX:Landroid/support/v7/widget/GridLayout$Bounds;
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v3, v0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v3}, Landroid/support/v7/widget/GridLayout$Axis;->getGroupBounds()Landroid/support/v7/widget/GridLayout$PackedMap;

    move-result-object v3

    move/from16 v0, v28

    #v0=(Integer);
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/GridLayout$PackedMap;->getValue(I)Ljava/lang/Object;

    move-result-object v16

    #v16=(Reference);
    check-cast v16, Landroid/support/v7/widget/GridLayout$Bounds;

    .line 1057
    .local v16, boundsY:Landroid/support/v7/widget/GridLayout$Bounds;
    const/4 v3, 0x1

    #v3=(One);
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    #v3=(Integer);
    sub-int v3, v18, v3

    invoke-virtual {v5, v4, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v24

    .line 1058
    .local v24, gravityOffsetX:I
    #v24=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    move-object/from16 v0, v16

    #v0=(Reference);
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/GridLayout$Bounds;->size(Z)I

    move-result v3

    #v3=(Integer);
    sub-int v3, v17, v3

    invoke-virtual {v9, v4, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getGravityOffset(Landroid/view/View;I)I

    move-result v25

    .line 1060
    .local v25, gravityOffsetY:I
    #v25=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v6, 0x1

    #v6=(One);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v29

    .line 1061
    .local v29, leftMargin:I
    #v29=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v44

    .line 1062
    .local v44, topMargin:I
    #v44=(Integer);
    const/4 v3, 0x1

    #v3=(One);
    const/4 v6, 0x0

    #v6=(Null);
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v37

    .line 1063
    .local v37, rightMargin:I
    #v37=(Integer);
    const/4 v3, 0x0

    #v3=(Null);
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Landroid/support/v7/widget/GridLayout;->getMargin(Landroid/view/View;ZZ)I

    move-result v15

    .line 1065
    .local v15, bottomMargin:I
    #v15=(Integer);
    add-int v40, v29, v37

    .line 1066
    .local v40, sumMarginsX:I
    #v40=(Integer);
    add-int v41, v44, v15

    .line 1069
    .local v41, sumMarginsY:I
    #v41=(Integer);
    add-int v6, v32, v40

    #v6=(Integer);
    const/4 v7, 0x1

    #v7=(One);
    move-object/from16 v3, p0

    #v3=(Reference);
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v13

    .line 1070
    .local v13, alignmentOffsetX:I
    #v13=(Integer);
    add-int v10, v31, v41

    #v10=(Integer);
    const/4 v11, 0x0

    #v11=(Null);
    move-object/from16 v6, v16

    #v6=(Reference);
    move-object/from16 v7, p0

    #v7=(Reference);
    move-object v8, v4

    #v8=(Reference);
    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/GridLayout$Bounds;->getOffset(Landroid/support/v7/widget/GridLayout;Landroid/view/View;Landroid/support/v7/widget/GridLayout$Alignment;IZ)I

    move-result v14

    .line 1072
    .local v14, alignmentOffsetY:I
    #v14=(Integer);
    sub-int v3, v18, v40

    #v3=(Integer);
    move/from16 v0, v32

    #v0=(Integer);
    invoke-virtual {v5, v4, v0, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v46

    .line 1073
    .local v46, width:I
    #v46=(Integer);
    sub-int v3, v17, v41

    move/from16 v0, v31

    invoke-virtual {v9, v4, v0, v3}, Landroid/support/v7/widget/GridLayout$Alignment;->getSizeInCell(Landroid/view/View;II)I

    move-result v27

    .line 1075
    .local v27, height:I
    #v27=(Integer);
    add-int v3, v47, v24

    add-int v23, v3, v13

    .line 1077
    .local v23, dx:I
    #v23=(Integer);
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/GridLayout;->isLayoutRtlCompat()Z

    move-result v3

    #v3=(Boolean);
    if-nez v3, :cond_3

    add-int v3, v34, v29

    #v3=(Integer);
    add-int v21, v3, v23

    .line 1079
    .local v21, cx:I
    :goto_2
    #v21=(Integer);
    add-int v3, v36, v49

    add-int v3, v3, v25

    add-int/2addr v3, v14

    add-int v22, v3, v44

    .line 1081
    .local v22, cy:I
    #v22=(Integer);
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v46

    if-ne v0, v3, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_2

    .line 1082
    :cond_1
    const/high16 v3, 0x4000

    move/from16 v0, v46

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x4000

    #v6=(Integer);
    move/from16 v0, v27

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1084
    :cond_2
    #v6=(Conflicted);
    add-int v3, v21, v46

    add-int v6, v22, v27

    #v6=(Integer);
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1, v3, v6}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    .line 1077
    .end local v21           #cx:I
    .end local v22           #cy:I
    :cond_3
    #v3=(Boolean);v6=(Reference);v21=(Conflicted);v22=(Conflicted);
    sub-int v3, v43, v46

    #v3=(Integer);
    sub-int v3, v3, v35

    sub-int v3, v3, v37

    sub-int v21, v3, v23

    #v21=(Integer);
    goto :goto_2

    .line 1086
    .end local v2           #boundsX:Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v4           #c:Landroid/view/View;
    .end local v5           #hAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v9           #vAlign:Landroid/support/v7/widget/GridLayout$Alignment;
    .end local v13           #alignmentOffsetX:I
    .end local v14           #alignmentOffsetY:I
    .end local v15           #bottomMargin:I
    .end local v16           #boundsY:Landroid/support/v7/widget/GridLayout$Bounds;
    .end local v17           #cellHeight:I
    .end local v18           #cellWidth:I
    .end local v19           #colSpan:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v20           #columnSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v23           #dx:I
    .end local v24           #gravityOffsetX:I
    .end local v25           #gravityOffsetY:I
    .end local v27           #height:I
    .end local v29           #leftMargin:I
    .end local v30           #lp:Landroid/support/v7/widget/GridLayout$LayoutParams;
    .end local v31           #pHeight:I
    .end local v32           #pWidth:I
    .end local v37           #rightMargin:I
    .end local v38           #rowSpan:Landroid/support/v7/widget/GridLayout$Interval;
    .end local v39           #rowSpec:Landroid/support/v7/widget/GridLayout$Spec;
    .end local v40           #sumMarginsX:I
    .end local v41           #sumMarginsY:I
    .end local v44           #topMargin:I
    .end local v46           #width:I
    .end local v47           #x1:I
    .end local v48           #x2:I
    .end local v49           #y1:I
    .end local v50           #y2:I
    :cond_4
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Integer);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);v21=(Conflicted);v23=(Conflicted);v24=(Conflicted);v25=(Conflicted);v27=(Conflicted);v29=(Conflicted);v30=(Conflicted);v31=(Conflicted);v32=(Conflicted);v37=(Conflicted);v38=(Conflicted);v39=(Conflicted);v40=(Conflicted);v41=(Conflicted);v44=(Conflicted);v46=(Conflicted);v47=(Conflicted);v48=(Conflicted);v49=(Conflicted);v50=(Conflicted);
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v10, 0x0

    .line 938
    #v10=(Null);
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->consistencyCheck()V

    .line 942
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateValues()V

    .line 944
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingLeft()I

    move-result v8

    #v8=(Integer);
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingRight()I

    move-result v9

    #v9=(Integer);
    add-int v0, v8, v9

    .line 945
    .local v0, hPadding:I
    #v0=(Integer);
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getPaddingBottom()I

    move-result v9

    add-int v5, v8, v9

    .line 947
    .local v5, vPadding:I
    #v5=(Integer);
    neg-int v8, v0

    invoke-static {p1, v8}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v7

    .line 948
    .local v7, widthSpecSansPadding:I
    #v7=(Integer);
    neg-int v8, v5

    invoke-static {p2, v8}, Landroid/support/v7/widget/GridLayout;->adjust(II)I

    move-result v2

    .line 950
    .local v2, heightSpecSansPadding:I
    #v2=(Integer);
    const/4 v8, 0x1

    #v8=(One);
    invoke-direct {p0, v7, v2, v8}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 956
    iget v8, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    #v8=(Integer);
    if-nez v8, :cond_0

    .line 957
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v8=(Reference);
    invoke-virtual {v8, v7}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .line 958
    .local v6, widthSansPadding:I
    #v6=(Integer);
    invoke-direct {p0, v7, v2, v10}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 959
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 966
    .local v1, heightSansPadding:I
    :goto_0
    #v1=(Integer);
    add-int v8, v6, v0

    #v8=(Integer);
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 967
    .local v4, measuredWidth:I
    #v4=(Integer);
    add-int v8, v1, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 969
    .local v3, measuredHeight:I
    #v3=(Integer);
    invoke-static {v4, p1, v10}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v8

    invoke-static {v3, p2, v10}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/support/v7/widget/GridLayout;->setMeasuredDimension(II)V

    .line 972
    return-void

    .line 961
    .end local v1           #heightSansPadding:I
    .end local v3           #measuredHeight:I
    .end local v4           #measuredWidth:I
    .end local v6           #widthSansPadding:I
    :cond_0
    #v1=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Uninit);
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v8=(Reference);
    invoke-virtual {v8, v2}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v1

    .line 962
    .restart local v1       #heightSansPadding:I
    #v1=(Integer);
    invoke-direct {p0, v7, v2, v10}, Landroid/support/v7/widget/GridLayout;->measureChildrenWithMargins(IIZ)V

    .line 963
    iget-object v8, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/GridLayout$Axis;->getMeasure(I)I

    move-result v6

    .restart local v6       #widthSansPadding:I
    #v6=(Integer);
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 987
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 988
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 989
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .parameter "alignmentMode"

    .prologue
    .line 502
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mAlignmentMode:I

    .line 503
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 504
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .parameter "columnCount"

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 421
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 422
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 423
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .parameter "columnOrderPreserved"

    .prologue
    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mHorizontalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 574
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 575
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 576
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 352
    iget v0, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    #v0=(Integer);
    if-eq v0, p1, :cond_0

    .line 353
    iput p1, p0, Landroid/support/v7/widget/GridLayout;->mOrientation:I

    .line 354
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 355
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 357
    :cond_0
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter "rowCount"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setCount(I)V

    .line 388
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 389
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 390
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .parameter "rowOrderPreserved"

    .prologue
    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/GridLayout;->mVerticalAxis:Landroid/support/v7/widget/GridLayout$Axis;

    #v0=(Reference);
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayout$Axis;->setOrderPreserved(Z)V

    .line 538
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayout;->invalidateStructure()V

    .line 539
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 540
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .parameter "useDefaultMargins"

    .prologue
    .line 466
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayout;->mUseDefaultMargins:Z

    .line 467
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayout;->requestLayout()V

    .line 468
    return-void
.end method
