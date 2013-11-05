.class Lcom/android/email/provider/EmailProvider$2;
.super Ljava/lang/Object;
.source "EmailProvider.java"

# interfaces
.implements Lcom/android/email/provider/EmailProvider$AttachmentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/EmailProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/provider/EmailProvider;


# direct methods
.method constructor <init>(Lcom/android/email/provider/EmailProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/android/email/provider/EmailProvider$2;->this$0:Lcom/android/email/provider/EmailProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public attachmentChanged(Landroid/content/Context;JI)V
    .locals 0
    .parameter "context"
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 2099
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/service/AttachmentDownloadService;->attachmentChanged(Landroid/content/Context;JI)V

    .line 2100
    return-void
.end method
