.class public Lcom/android/email/activity/ContactStatusLoader$Result;
.super Ljava/lang/Object;
.source "ContactStatusLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ContactStatusLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;


# instance fields
.field public final mLookupUri:Landroid/net/Uri;

.field public final mPhoto:Landroid/graphics/Bitmap;

.field public final mPresenceResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    #v2=(Null);
    new-instance v0, Lcom/android/email/activity/ContactStatusLoader$Result;

    #v0=(UninitRef);
    const v1, 0x108006a

    #v1=(Integer);
    invoke-direct {v0, v2, v1, v2}, Lcom/android/email/activity/ContactStatusLoader$Result;-><init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/activity/ContactStatusLoader$Result;->UNKNOWN:Lcom/android/email/activity/ContactStatusLoader$Result;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;ILandroid/net/Uri;)V
    .locals 0
    .parameter "photo"
    .parameter "presenceResId"
    .parameter "lookupUri"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    #p0=(Reference);
    iput-object p1, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    .line 78
    iput p2, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mPresenceResId:I

    .line 79
    iput-object p3, p0, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    .line 80
    return-void
.end method
