# Load the required libraries
library(ggplot2)
library(plotly)

# Read the dataset from the CSV file
dataset <- read.csv("data/ttr_french.csv")

# Define the color palette
num_lines <- length(dataset) - 1
color_palette <- c("#1f78b4", "#33a02c", "#e31a1c", "#ff7f00", "#6a3d9a", "#b15928", "#a6cee3")

# Create the line plot
plot <- ggplot(data = dataset, aes(x = Chapter)) +
  geom_line(aes(y = X1854, color = "1854"), size = 1) +
  geom_line(aes(y = X1919, color = "1919")) +
  geom_line(aes(y = X1946, color = "1946")) +
  geom_line(aes(y = X1964, color = "1964")) +
  geom_line(aes(y = X1966, color = "1966")) +
  geom_line(aes(y = X2008, color = "2008")) +
  geom_line(aes(y = Original), color = "black", linetype = "dotted") +
  labs(x = "Chapter", y = "Values", title = "Type-Token Ratio (TTR) Jane Eyre French Translations", subtitle = "giovannipietrovitali@gmail.com") +
  theme_minimal() +
  theme(panel.grid.major = element_line(color = "gray", linetype = "dotted"),
        panel.grid.minor = element_blank(),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_color_manual(values = color_palette)

# Add vertical lines for each line in the dataset
vertical_lines <- geom_vline(data = dataset, aes(xintercept = as.numeric(Chapter)), color = "gray70", linetype = "dashed", alpha = 0.3)

# Add chapter numbers on the x-axis
x_labels <- scale_x_continuous(breaks = seq_along(dataset$Chapter), labels = dataset$Chapter)

# Combine the line plot, vertical lines, and x-axis labels
plot_with_vertical_lines <- plot + vertical_lines + x_labels

# Convert the plot to an interactive format using plotly
plot_interactive <- ggplotly(plot_with_vertical_lines)

# Display the interactive plot
plot_interactive
