.class public final Lcom/android/mail/providers/UIProvider$AttachmentRendition;
.super Ljava/lang/Object;
.source "UIProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/providers/UIProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttachmentRendition"
.end annotation


# static fields
.field public static final PREFERRED_RENDITIONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2059
    const/4 v0, 0x2

    #v0=(PosByte);
    new-array v0, v0, [I

    #v0=(Reference);
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mail/providers/UIProvider$AttachmentRendition;->PREFERRED_RENDITIONS:[I

    return-void

    #v0=(Unknown);
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2041
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method
