.class public Landroid/support/v4/content/IntentCompat;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;,
        Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;,
        Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;,
        Landroid/support/v4/content/IntentCompat$IntentCompatImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    .local v0, version:I
    #v0=(Integer);
    const/16 v1, 0xf

    #v1=(PosByte);
    if-lt v0, v1, :cond_0

    .line 87
    new-instance v1, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplIcsMr1;-><init>()V

    #v1=(Reference);
    sput-object v1, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    #v1=(PosByte);
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v1, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplHC;-><init>()V

    #v1=(Reference);
    sput-object v1, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    goto :goto_0

    .line 91
    :cond_1
    #v1=(PosByte);
    new-instance v1, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;

    #v1=(UninitRef);
    invoke-direct {v1}, Landroid/support/v4/content/IntentCompat$IntentCompatImplBase;-><init>()V

    #v1=(Reference);
    sput-object v1, Landroid/support/v4/content/IntentCompat;->IMPL:Landroid/support/v4/content/IntentCompat$IntentCompatImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    #p0=(Reference);
    return-void
.end method
