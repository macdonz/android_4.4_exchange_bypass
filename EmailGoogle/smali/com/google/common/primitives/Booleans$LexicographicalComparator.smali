.class final enum Lcom/google/common/primitives/Booleans$LexicographicalComparator;
.super Ljava/lang/Enum;
.source "Booleans.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/Booleans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LexicographicalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/primitives/Booleans$LexicographicalComparator;",
        ">;",
        "Ljava/util/Comparator",
        "<[Z>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

.field public static final enum INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 277
    #v2=(Null);
    new-instance v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    #v0=(UninitRef);
    const-string v1, "INSTANCE"

    #v1=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/Booleans$LexicographicalComparator;-><init>(Ljava/lang/String;I)V

    #v0=(Reference);
    sput-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    .line 276
    const/4 v0, 0x1

    #v0=(One);
    new-array v0, v0, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    #v0=(Reference);
    sget-object v1, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #p0=(Reference);
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    .locals 1
    .parameter

    .prologue
    .line 276
    const-class v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    #v0=(Reference);
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method

.method public static values()[Lcom/google/common/primitives/Booleans$LexicographicalComparator;
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->$VALUES:[Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    #v0=(Reference);
    invoke-virtual {v0}, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/Booleans$LexicographicalComparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 276
    check-cast p1, [Z

    .end local p1
    check-cast p2, [Z

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/Booleans$LexicographicalComparator;->compare([Z[Z)I

    move-result v0

    #v0=(Integer);
    return v0
.end method

.method public compare([Z[Z)I
    .locals 5
    .parameter "left"
    .parameter "right"

    .prologue
    .line 281
    array-length v3, p1

    #v3=(Integer);
    array-length v4, p2

    #v4=(Integer);
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 282
    .local v1, minLength:I
    #v1=(Integer);
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #v0=(Integer);v2=(Conflicted);
    if-ge v0, v1, :cond_1

    .line 283
    aget-boolean v3, p1, v0

    #v3=(Boolean);
    aget-boolean v4, p2, v0

    #v4=(Boolean);
    invoke-static {v3, v4}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v2

    .line 284
    .local v2, result:I
    #v2=(Integer);
    if-eqz v2, :cond_0

    .line 288
    .end local v2           #result:I
    :goto_1
    #v3=(Integer);v4=(Integer);
    return v2

    .line 282
    .restart local v2       #result:I
    :cond_0
    #v3=(Boolean);v4=(Boolean);
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 288
    .end local v2           #result:I
    :cond_1
    #v2=(Conflicted);v3=(Integer);v4=(Integer);
    array-length v3, p1

    array-length v4, p2

    sub-int v2, v3, v4

    #v2=(Integer);
    goto :goto_1
.end method
