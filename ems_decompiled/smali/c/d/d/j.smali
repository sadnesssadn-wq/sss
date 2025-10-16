.class public final Lc/d/d/j;
.super Lc/d/d/m;
.source ""


# static fields
.field public static final e:Lc/d/d/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/d/d/j;

    invoke-direct {v0}, Lc/d/d/j;-><init>()V

    sput-object v0, Lc/d/d/j;->e:Lc/d/d/j;

    sget-object v1, Lc/d/d/m;->d:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/d/d/m;-><init>()V

    return-void
.end method
