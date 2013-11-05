.class Lcom/android/mail/ui/MailActivity$NdefMessageMaker;
.super Ljava/lang/Object;
.source "MailActivity.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/ui/MailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NdefMessageMaker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mail/ui/MailActivity$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/mail/ui/MailActivity$NdefMessageMaker;-><init>()V

    #p0=(Reference);
    return-void
.end method

.method private static getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;
    .locals 9
    .parameter "account"

    .prologue
    const/4 v8, 0x1

    #v8=(One);
    const/4 v7, 0x0

    .line 91
    :try_start_0
    #v7=(Null);
    const-string v5, "UTF-8"

    #v5=(Reference);
    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    .local v0, accountBytes:[B
    :goto_0
    #v0=(Reference);v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);
    const/4 v3, 0x6

    .line 96
    .local v3, prefix:B
    #v3=(PosByte);
    array-length v5, v0

    #v5=(Integer);
    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 97
    .local v4, recordBytes:[B
    #v4=(Reference);
    aput-byte v3, v4, v7

    .line 98
    array-length v5, v0

    invoke-static {v0, v7, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    new-instance v2, Landroid/nfc/NdefRecord;

    #v2=(UninitRef);
    sget-object v5, Landroid/nfc/NdefRecord;->RTD_URI:[B

    #v5=(Reference);
    new-array v6, v7, [B

    #v6=(Reference);
    invoke-direct {v2, v8, v5, v6, v4}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 101
    .local v2, mailto:Landroid/nfc/NdefRecord;
    #v2=(Reference);
    new-instance v5, Landroid/nfc/NdefMessage;

    #v5=(UninitRef);
    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v2, v6, v7

    invoke-direct {v5, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    #v5=(Reference);
    return-object v5

    .line 92
    .end local v0           #accountBytes:[B
    .end local v2           #mailto:Landroid/nfc/NdefRecord;
    .end local v3           #prefix:B
    .end local v4           #recordBytes:[B
    :catch_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Conflicted);v6=(Conflicted);
    move-exception v1

    .line 93
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    #v1=(Reference);
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .restart local v0       #accountBytes:[B
    #v0=(Reference);
    goto :goto_0
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 1
    .parameter "event"

    .prologue
    .line 78
    sget-object v0, Lcom/android/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    #v0=(Reference);
    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/mail/ui/MailActivity;->sAccountName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mail/ui/MailActivity$NdefMessageMaker;->getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v0

    goto :goto_0
.end method
