.class public final synthetic Lc/d/a/a/j/t/h/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic c:Lc/d/a/a/j/t/h/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/d/a/a/j/t/h/a;

    invoke-direct {v0}, Lc/d/a/a/j/t/h/a;-><init>()V

    sput-object v0, Lc/d/a/a/j/t/h/a;->c:Lc/d/a/a/j/t/h/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/AlarmManagerSchedulerBroadcastReceiver;->a:I

    return-void
.end method
