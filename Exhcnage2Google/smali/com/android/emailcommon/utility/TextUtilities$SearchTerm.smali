.class Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;
.super Ljava/lang/Object;
.source "TextUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/TextUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchTerm"
.end annotation


# instance fields
.field final mLength:I

.field mMatchLength:I

.field mMatchStart:I

.field final mTerm:Ljava/lang/String;

.field final mTermLowerCase:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "term"

    .prologue
    .line 548
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 545
    #p0=(Reference);
    const/4 v0, 0x0

    #v0=(Null);
    iput v0, p0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchLength:I

    .line 546
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mMatchStart:I

    .line 549
    iput-object p1, p0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mTerm:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mTermLowerCase:Ljava/lang/String;

    .line 551
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    #v0=(Integer);
    iput v0, p0, Lcom/android/emailcommon/utility/TextUtilities$SearchTerm;->mLength:I

    .line 552
    return-void
.end method
