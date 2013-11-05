.class public Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;
.super Ljava/lang/Object;
.source "EmailServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/EmailServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailServiceInfo"
.end annotation


# instance fields
.field public accountType:Ljava/lang/String;

.field public defaultLocalDeletes:I

.field public defaultLookback:I

.field public defaultSsl:Z

.field public defaultSyncInterval:I

.field public hide:Z

.field public inferPrefix:Ljava/lang/String;

.field intentAction:Ljava/lang/String;

.field intentPackage:Ljava/lang/String;

.field klass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public offerAttachmentPreload:Z

.field public offerCerts:Z

.field public offerLoadMore:Z

.field public offerLocalDeletes:Z

.field public offerLookback:Z

.field public offerPrefix:Z

.field public offerTls:Z

.field public port:I

.field public portSsl:I

.field public protocol:Ljava/lang/String;

.field public requiresSetup:Z

.field public syncCalendar:Z

.field public syncChanges:Z

.field public syncContacts:Z

.field public syncIntervalStrings:[Ljava/lang/CharSequence;

.field public syncIntervals:[Ljava/lang/CharSequence;

.field public usesAutodiscover:Z

.field public usesSmtp:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    const-string v1, "Protocol: "

    #v1=(Reference);
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, sb:Ljava/lang/StringBuilder;
    #v0=(Reference);
    iget-object v1, p0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->klass:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v1, "Local"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, " , Account Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lcom/android/email/service/EmailServiceUtils$EmailServiceInfo;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    :cond_0
    const-string v1, "Remote"

    goto :goto_0
.end method
