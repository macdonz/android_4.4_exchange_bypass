.class Lcom/android/email/provider/EmailProvider$CloseDetectingCursor;
.super Landroid/database/CursorWrapper;
.source "EmailProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CloseDetectingCursor"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 3868
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 3869
    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    .line 3873
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 3874
    invoke-static {}, Lcom/android/email/provider/EmailProvider;->access$300()Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    const-string v1, "Closing cursor"

    #v1=(Reference);
    const/4 v2, 0x1

    #v2=(One);
    new-array v2, v2, [Ljava/lang/Object;

    #v2=(Reference);
    const/4 v3, 0x0

    #v3=(Null);
    new-instance v4, Ljava/lang/Error;

    #v4=(UninitRef);
    invoke-direct {v4}, Ljava/lang/Error;-><init>()V

    #v4=(Reference);
    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3875
    return-void
.end method
