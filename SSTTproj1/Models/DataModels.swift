//
//  DataModels.swift
//  SSTTproj1
//
//  Created by Oleksii Miroshnyk on 20.06.2024.
//

import Foundation

struct Paper: Hashable {
    var title: String
    var url: String
    var idea: String
    var method: String
    var keyFeatures: [String]
}

struct PHDThesis {
    var title: String
    var summary: String
}

struct Author {
    var name: String
    var position: String
    var university: String
    var githubUrl: String
    var linkedInUrl: String
}

var authorModel: Author = Author(name: "Oleksii Miroshnyk",
                                 position: "Senior Software Engineer (iOS)",
                                 university: "PhD, KNU named of Taras Shevchenko",
                                 githubUrl: "https://github.com/omiroshn",
                                 linkedInUrl: "https://linkedin.com/in/omiroshn")

var thesisModel: PHDThesis = PHDThesis(title: "Information Technology for Managing a Group of UAVs in Variable Conditions",
                                  summary: "The development of modern information technologies opens new possibilities for the effective management of groups of unmanned aerial vehicles (UAVs) in various operating conditions. Integrating these technologies into UAV control systems enhances autonomy and coordination among the devices, especially in uncertain and changing environments. A key direction is the use of artificial intelligence (AI) and machine learning algorithms, which optimize decision-making processes and responses to changing conditions, thus improving control system efficiency and UAV safety. Additionally, creating information systems utilizing Internet of Things (IoT) technologies enables real-time information gathering for managing UAV groups in variable conditions, ensuring accurate and rapid responses to changes, critical for emergency missions or time-limited operations. The development and implementation of geospatial analysis systems also enhance the awareness and controllability of UAV groups in changing geographical environments, reducing the risks of unforeseen situations and ensuring more precise and effective mission planning. Overall, information technologies play a crucial role in ensuring the success and efficiency of UAV group operations under varying conditions.")

var papers: [Paper] = [Paper(title: "Chaos Detection and Mitigation in Swarm of Drones Using Machine Learning Techniques and Chaotic Attractors",
                             url: "https://www.academia.edu/84327735/Chaos_Detection_and_Mitigation_in_Swarm_of_Drones_Using_Machine_Learning_Techniques_and_Chaotic_Attractors",
                             idea: "The paper presents an on-the-fly chaotic behavior detection model for large numbers of flying drones using machine learning techniques and chaotic attractors.",
                             method: "A combination of machine learning algorithms including Logistic Regression, Convolutional Neural Network (CNN), Gaussian Mixture Models (GMMs), and Expectation-Maximization (EM) to classify drone flight data as chaotic or non-chaotic. The Rössler system is then used to handle chaotic conditions.",
                             keyFeatures: ["• Machine Learning Integration: Utilizes various machine learning algorithms for chaos detection and mitigation.",
                                           "• Real-time Implementation: The model is validated using real-world flight test data, demonstrating its viability for real-time application.",
                                           "• Chaotic Attractors: Employs the Rössler system to manage detected chaos.",
                                           "• Swarm Mobility Monitoring: Provides a solution for real-time monitoring of chaos in drone swarms with reduced commotion effects.",
                                           "• Improved Performance: The proposed technique enhances the reliability and performance of fully autonomous drone swarm flights."]),
                       
                       Paper(title: "Swarm Flight Control for Multiple Drones Based on Learning Type Flocking Algorithm",
                             url: "https://www.academia.edu/76786676/Swarm_Flight_Control_for_Multiple_Drones_Based_on_Learning_Type_Flocking_Algorithm",
                             idea: "This research aims to realize swarm flight control useful in agriculture and entertainment, using the Boids flocking algorithm known for simulating group behavior in birds and fish.",
                             method: "Utilizing the Boids algorithm, the study implements three basic rules—cohesion, alignment, and separation. Parameters are optimized using a genetic algorithm (GA). The paper includes experiments evaluating the operability of controlling individual and multiple drones.",
                             keyFeatures: ["• Flocking Algorithm (Boids): Simulates natural flocking behavior using three rules—cohesion, alignment, and separation.",
                                           "• Genetic Algorithm (GA): Used for parameter tuning to optimize swarm behavior.",
                                           "• Human Operation: Evaluates the ease of controlling swarm drones under different scenarios.",
                                           "• Applications: Suitable for agriculture (e.g., pesticide spraying) and entertainment (e.g., drone performances).",
                                           "• Evaluation: The study includes experiments to assess the control and coordination of the drone swarm."]),
                       
                       Paper(title: "Proof-of-concept swarm of self-organising drones aimed at fighting wildfires",
                             url: "https://www.academia.edu/35421239/_2018_Proof_of_concept_swarm_of_self_organising_drones_aimed_at_fighting_wildfires",
                             idea: "This paper presents a proof-of-concept for using a swarm of self-organizing drones to autonomously fight wildfires. The research leverages swarm intelligence (SI) to coordinate drones without central control.",
                             method: "The paper develops a physics-based fire-spread model and couples it with a fleet of self-organizing drones using a modified particle swarm algorithm. The drones are designed to operate autonomously with distributed decision-making to manage and extinguish wildfires.",
                             keyFeatures: ["• Swarm Intelligence (SI): Utilizes decentralized, self-organizing behavior inspired by natural systems (e.g., ant colonies, bird flocks).",
                                           "• Fire-Spread Model: Implements a 2D reaction-diffusion equation to simulate wildfire spread.",
                                           "• Particle Swarm Algorithm: Modified to handle dynamic environments and smoothen erratic behavior.",
                                           "• Real-Time Application: Demonstrates the feasibility of real-time autonomous wildfire fighting.",
                                           "• Future Work: Plans to incorporate collision avoidance algorithms and advanced fire-spread models, considering atmospheric conditions and flight dynamics."]),
                       
                       Paper(title: "Development of Self-Synchronized Drones’ Network Using Cluster-Based Swarm Intelligence Approach",
                             url: "https://www.academia.edu/81858260/Development_of_Self_Synchronized_Drones_Network_Using_Cluster_Based_Swarm_Intelligence_Approach",
                             idea: "A cluster-based swarm intelligence approach for synchronizing the network of drones.",
                             method: "A cluster-based swarm intelligence approach for synchronizing the network of drones.",
                             keyFeatures: ["• Autonomous swarm clusters",
                                           "• Intra-swarm and inter-swarm synchronization",
                                           "• Improved timing synchronization precision",
                                           "• MATLAB simulations showed a 75% improvement in system throughput"]),
                       
                       Paper(title: "Energy-Efficient Formation Morphing for Collision Avoidance in a Swarm of Drones",
                             url: "https://www.academia.edu/81858260/Energy_Efficient_Formation_Morphing_for",
                             idea: "An energy-efficient method for maintaining swarm formation and avoiding collisions using the thin-plate splines algorithm.",
                             method: "Combines formation control and collision avoidance by adapting the thin-plate splines algorithm to minimize deformation while avoiding obstacles. Uses a non-rigid mapping function to reduce lag caused by maneuvers.",
                             keyFeatures: ["• Formation-Collision Co-awareness",
                                           "• Non-Rigid Mapping",
                                           "• Simulation Results",
                                           "• Multi-Priority Control"]),
                       
                       Paper(title: "Improving Motion Safety and Efficiency of a Swarm of Drones",
                             url: "https://example.com/improving_motion_safety_and_efficiency",
                             idea: "A novel approach to ensuring motion safety and efficiency of a swarm of drones using dynamic evolutionary and critical instruction components.",
                             method: "The approach consists of five components: an offline part, dynamic evolutionary, critical instruction, run-time safety monitoring, and decision center. The method ensures swarms avoid collisions while optimizing path length.",
                             keyFeatures: ["• Offline Part: Uses Dijkstra’s algorithm for shortest path computation and evaluation operations to select the best routes.",
                                           "• Dynamic Evolutionary Component: Finds efficient routes and adapts to dynamic obstacles.",
                                           "• Critical Instruction Component: Manages collision avoidance by sending stop messages and resuming drones one-by-one.",
                                           "• Decision Center Component: Checks for collisions and coordinates the response.",
                                           "• Run-Time Safety Monitoring: Monitors real-time conditions to ensure safety."]),
                       
                       Paper(title: "A Drones Optimal Path Planning Based on Swarm Intelligence Algorithms",
                             url: "https://www.academia.edu/81858260/A_Drones_Optimal_Path_Planning_Based_on",
                             idea: "An optimal path planning model for drones using swarm intelligence algorithms to enhance network lifetime and efficiency.",
                             method: "Utilizes a hybrid model combining several swarm intelligence algorithms to optimize the network lifetime (NLT) and reduce average delay (AD).",
                             keyFeatures: ["• SIRSS-CIoD Technique: Combines several clustering and routing algorithms to enhance performance.",
                                           "• Performance Validation: Extensive NLT and AD analysis showing improved performance compared to other methods.",
                                           "• Simulation Results: Demonstrates significant improvements in NLT and reduced AD in various scenarios.",
                                           "• Comparative Analysis: Shows superiority of SIRSS-CIoD over GSOCR, GWOCR, IPSOCR, and PSOCR methods.",
                                           "• Efficient Routing: Ensures collision-free navigation and efficient scheduling for drone fleets."])]
