.class Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "AccountServerBaseFragment.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;

    #v0=(UninitRef);
    invoke-direct {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;-><init>()V

    #v0=(Reference);
    sput-object v0, Lcom/android/email/activity/setup/AccountServerBaseFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(ILcom/android/email/activity/setup/SetupData;)V
    .locals 0
    .parameter "result"
    .parameter "setupData"

    .prologue
    .line 103
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 101
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 0
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 102
    return-void
.end method
