.class synthetic Lcom/android/mail/browse/WebViewContextMenu$1;
.super Ljava/lang/Object;
.source "WebViewContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mail/browse/WebViewContextMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuGroupType:[I

.field static final synthetic $SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 405
    invoke-static {}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->values()[Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    move-result-object v0

    #v0=(Reference);
    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuGroupType:[I

    :try_start_0
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->PHONE_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_0
    :try_start_1
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->EMAIL_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_1
    :try_start_2
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->GEO_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_2
    :try_start_3
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuGroupType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ANCHOR_GROUP:Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuGroupType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    .line 357
    :goto_3
    #v1=(Conflicted);v2=(Conflicted);
    invoke-static {}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->values()[Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    move-result-object v0

    array-length v0, v0

    #v0=(Integer);
    new-array v0, v0, [I

    #v0=(Reference);
    sput-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    :try_start_4
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->OPEN_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x1

    #v2=(One);
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_4
    :try_start_5
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_LINK_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x2

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_5
    :try_start_6
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->SHARE_LINK_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x3

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_6
    :try_start_7
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->DIAL_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x4

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->SMS_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x5

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_8
    :try_start_9
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ADD_CONTACT_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x6

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_9
    :try_start_a
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_PHONE_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/4 v2, 0x7

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_a
    :try_start_b
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->EMAIL_CONTACT_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x8

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_b
    :try_start_c
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_MAIL_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0x9

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_c
    :try_start_d
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->MAP_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xa

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_d
    :try_start_e
    #v1=(Conflicted);v2=(Conflicted);
    sget-object v0, Lcom/android/mail/browse/WebViewContextMenu$1;->$SwitchMap$com$android$mail$browse$WebViewContextMenu$MenuType:[I

    sget-object v1, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->COPY_GEO_MENU:Lcom/android/mail/browse/WebViewContextMenu$MenuType;

    #v1=(Reference);
    invoke-virtual {v1}, Lcom/android/mail/browse/WebViewContextMenu$MenuType;->ordinal()I

    move-result v1

    #v1=(Integer);
    const/16 v2, 0xb

    #v2=(PosByte);
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_e
    #v1=(Conflicted);v2=(Conflicted);
    return-void

    :catch_0
    move-exception v0

    goto :goto_e

    :catch_1
    move-exception v0

    goto :goto_d

    :catch_2
    move-exception v0

    goto :goto_c

    :catch_3
    move-exception v0

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_7

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v0

    goto/16 :goto_4

    .line 405
    :catch_b
    move-exception v0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    goto/16 :goto_2

    :catch_d
    move-exception v0

    goto/16 :goto_1

    :catch_e
    move-exception v0

    goto/16 :goto_0
.end method
